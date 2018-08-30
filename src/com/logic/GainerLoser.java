package com.logic;

import java.math.BigDecimal;
import java.util.Collections;
import java.util.List;

import com.trade.ShareDetail;
import com.trade.ShareInfo;

public class GainerLoser {
	
	public List<Integer> comparison(List<ShareInfo> share,List<ShareDetail> sharedetail) {
		BigDecimal max1=new BigDecimal(0.0);
		BigDecimal min=new BigDecimal(-100.0);
		List<Integer> ans=null;
		List<BigDecimal> difference = null;
		List<BigDecimal> difference1 = null;
		for(int i=0;i<share.size();i++) {
			difference.add(share.get(i).getPriceOfSecurity().subtract(sharedetail.get(i).getOpen()));
			difference1.add(share.get(i).getPriceOfSecurity().subtract(sharedetail.get(i).getOpen()));
		}
		Collections.sort(difference, Collections.reverseOrder());
		
		for(int i=0;i<difference.size();i++) {
			if(difference.get(difference.size()-1)==difference1.get(i)) {
				ans.add(i);
				break;
			}
		}
		for(int i=0;i<difference.size();i++) {
			if(difference.get(difference.size()-2)==difference1.get(i)) {
				ans.add(i);
				break;
			}
		}
		
		for(int i=0;i<difference.size();i++) {
			if(difference.get(0)==difference1.get(i)) {
				ans.add(i);
				break;
			}
		}
		for(int i=0;i<difference.size();i++) {
			if(difference.get(1)==difference1.get(i)) {
				ans.add(i);
				break;
			}
		}
		
		
		return ans;
	}
	
	public BigDecimal calculatePercentage(BigDecimal start, BigDecimal current) {
		BigDecimal difference;
		BigDecimal differencePercentage;
		BigDecimal hundred=new BigDecimal(100);
		difference=current.subtract(start);
	differencePercentage=(difference.divide(current)).multiply(hundred);
    return differencePercentage;
	}

}
