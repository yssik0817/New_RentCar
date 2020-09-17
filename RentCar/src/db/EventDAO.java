package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class EventDAO {
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;

	// 커넥션 풀을 이용한 데이터베이스 연결
	public void getCon() {

		try {
			Context initctx = new InitialContext();
			Context envctx = (Context) initctx.lookup("java:comp/env");	//자바 읽어주는 환경
			DataSource ds = (DataSource) envctx.lookup("jdbc/pool");	//데이터 소스 가져오기(server.xml)
			con = ds.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	//최신순 이벤트를 출력하는 메소드
			public Vector<EventBean> getAllEvent(){
				
				//리턴타입 설정
				Vector<EventBean> v = new Vector<>();
				getCon(); //커넥션이 연결되어야 쿼리 실행 가능
				
				try {
					String sql = "select * from event order by no desc";
					pstmt = con.prepareStatement(sql);
					//쿼리 실행 후 결과를 Result타입으로 리턴
					rs = pstmt.executeQuery();
					
					int count=0;
					while(rs.next()) {
						EventBean bean = new EventBean();
						bean.setNo(rs.getInt(1));
						bean.setName(rs.getString(2));
						bean.setPeriod(rs.getString(3));
						bean.setImg(rs.getString(4));
						bean.setInfo(rs.getString(5));
						//백터에 빈클래스를 저장
						v.add(bean);
						count++;
						if(count > 3)break;	//반복문 빠져나가기, 3개만 백터에 저장
					}
					con.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
				return v;
			}
			
			//하나의 자동차 정보를 리턴하는 메소드
			public EventBean getOneEvent(int no) {
				//리턴 타입 선언
				EventBean bean = new EventBean();
				getCon();
				
				try {
					String sql = "select * from event where no=?";
					pstmt = con.prepareStatement(sql);
					pstmt.setInt(1, no);
					//결과 리턴
					rs = pstmt.executeQuery();
					//반복문 돌면서 데이터 저장
					if(rs.next()) {
						bean.setNo(rs.getInt(1));
						bean.setName(rs.getString(2));
						bean.setPeriod(rs.getString(3));
						bean.setImg(rs.getString(4));
						bean.setInfo(rs.getString(5));
					}
					con.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
				return bean;
			}
			
			
}
