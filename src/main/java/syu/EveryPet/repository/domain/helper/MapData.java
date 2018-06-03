package syu.EveryPet.repository.domain.helper;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.cache.annotation.EnableCaching;

import syu.EveryPet.repository.domain.MapDomain;

@EnableCaching
public class MapData {

	private List<MapDomain> mapList = new ArrayList<>();
	private MapDomain map;

	@Cacheable
	public List<MapDomain> getJsonFromUrl(String urlStr, int pIndex, String target) throws IOException {
		URL url = new URL(urlStr + pIndex);
		HttpURLConnection con = (HttpURLConnection) url.openConnection();
		con.setRequestMethod("GET");
		con.setDoOutput(true);
		BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
		String inputLine;
		StringBuffer strb = new StringBuffer();
		while ((inputLine = in.readLine()) != null) {
			strb.append(inputLine);
		}
		in.close();
		con.disconnect();

		putList(strb.toString(), target);

		if (pIndex <= selectTot(strb.toString(), target) / 1000) {
			pIndex += 1;
			getJsonFromUrl(urlStr, pIndex, target);
		}

		return getMapList();
	}


	@Cacheable
	private void putList(String strb, String target) {
		JSONArray arr = new JSONObject(strb).getJSONArray(target).getJSONObject(1).getJSONArray("row");
		for (Object obj : arr) {
			JSONObject jObj = (JSONObject) obj;
			map = new MapDomain();
			map.setLat(jObj.getFloat("REFINE_WGS84_LAT"));
			map.setLng(jObj.getFloat("REFINE_WGS84_LOGT"));
			map.setAddr(jObj.get("REFINE_ROADNM_ADDR").toString());
			try {
				map.setState(jObj.getString("BSN_STATE_NM"));				
			} catch (JSONException e) {
				try {
					map.setState(jObj.get("ENTRPS_TELNO").toString());					
				} catch (JSONException e2) {
					map.setState(jObj.get("RESCUE_INST_TELNO").toString());
				}
			}
			if(map.getState() == "null") map.setState("정보 없음");
			try {
				map.setName(jObj.getString("BIZPLC_NM"));				
			} catch (JSONException e) {
				try {
					map.setName(jObj.getString("ENTRPS_NM"));					
				} catch (JSONException e2) {
					map.setName(jObj.getString("RESCUE_INST_NM"));					
				}
			}
			mapList.add(map);
		}
	}

	@Cacheable
	private int selectTot(String JSONString, String target) {
		return new JSONObject(JSONString).getJSONArray(target).getJSONObject(0).getJSONArray("head")
				.getJSONObject(0).getInt("list_total_count");
	}


	public List<MapDomain> getMapList() {
		return mapList;
	}
	
	
}
