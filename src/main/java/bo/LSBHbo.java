package bo;

import java.util.ArrayList;

import bean.LSBHbean;
import dao.LSBHdao;

public class LSBHbo {
	public ArrayList<LSBHbean> getViewLichSu() throws Exception {
		LSBHdao ls = new LSBHdao();
		return ls.getLSBH();
	}
}
