package com.crud.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.crud.bean.BoardVO;
import com.crud.common.JDBCUtil;

public class BoardDAO {

    Connection conn = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;

    private final String BOARD_INSERT = "insert into BOARD (preference, title, singer, album, playtime) values (?,?,?,?,?)";
    private final String BOARD_UPDATE = "update BOARD set preference=?, title=?, singer=?, album=?, playlist=? where seq=?";
    private final String BOARD_DELETE = "delete from BOARD  where seq=?";
    private final String BOARD_GET = "select * from BOARD  where seq=?";
    private final String BOARD_LIST = "select * from BOARD order by seq desc";

    public int insertBoard(BoardVO vo) {
        System.out.println("===> JDBC로 insertBoard() 기능 처리");
        try {
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(BOARD_INSERT);
            stmt.setString(1, vo.getPreference());
            stmt.setString(2, vo.getTitle());
            stmt.setString(3, vo.getSinger());
            stmt.setString(4, vo.getAlbum());
            stmt.setString(5, vo.getPlaytime());
            stmt.executeUpdate();
            return 1;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    // 글 삭제
    public void deleteBoard(BoardVO vo) {
        System.out.println("===> JDBC로 deleteBoard() 기능 처리");
        try {
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(BOARD_DELETE);
            stmt.setInt(1, vo.getSeq());
            stmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public int updateBoard(BoardVO vo) {
        System.out.println("===> JDBC로 updateBoard() 기능 처리");
        try {
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(BOARD_UPDATE);
            stmt.setString(1, vo.getPreference());
            stmt.setString(2, vo.getTitle());
            stmt.setString(3, vo.getSinger());
            stmt.setString(4, vo.getAlbum());
            stmt.setString(5, vo.getPlaytime());
            stmt.setInt(6, vo.getSeq());


            System.out.println(vo.getCnt() + "-" + vo.getTitle() + "-" + vo.getSinger() + "-" + vo.getAlbum() + "-" + vo.getPlaytime() + vo.getSeq());
            stmt.executeUpdate();
            return 1;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    public BoardVO getBoard(int seq) {
        BoardVO one = new BoardVO();
        System.out.println("===> JDBC로 getBoard() 기능 처리");
        try {
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(BOARD_GET);
            stmt.setInt(1, seq);
            rs = stmt.executeQuery();
            if (rs.next()) {
                one.setSeq(rs.getInt("seq"));
                one.setPreference(rs.getString("preference"));
                one.setTitle(rs.getString("title"));
                one.setSinger(rs.getString("singer"));
                one.setAlbum(rs.getString("album"));
                one.setPlaytime(rs.getString("playtime"));
            }
            rs.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return one;
    }

    public List<BoardVO> getBoardList() {
        List<BoardVO> list = new ArrayList<BoardVO>();
        System.out.println("===> JDBC로 getBoardList() 기능 처리");
        try {
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(BOARD_LIST);
            rs = stmt.executeQuery();
            while (rs.next()) {
                BoardVO one = new BoardVO();
                one.setSeq(rs.getInt("seq"));

                one.setPreference(rs.getString("preference"));
                one.setTitle(rs.getString("title"));
                one.setSinger(rs.getString("singer"));
                one.setAlbum(rs.getString("album"));
                one.setPlaytime(rs.getString("playtime"));
                list.add(one);
            }
            rs.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
