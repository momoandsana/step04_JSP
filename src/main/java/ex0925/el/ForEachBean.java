package ex0925.el;

import java.util.*;

public class ForEachBean {
    private String names[] = {"윤성", "염진", "인영", "형우", "성민"};
    private List<String> menus = Arrays.asList("짜장", "짬뽕", "탕수육", "깐풍기");

    private List<Board> boardList = new ArrayList<>();
    private Map<String, String> map = new HashMap<>();

    public ForEachBean() { // 생성자를 public으로 변경
        System.out.println("ForEachBean.ForEachBean");

        // boardList에 데이터 추가
        boardList.add(new Board(1, "제목1", "내용1"));
        boardList.add(new Board(2, "제목2", "내용2"));
        boardList.add(new Board(3, "제목3", "내용3"));
        boardList.add(new Board(4, "제목4", "내용4"));
        boardList.add(new Board(5, "제목5", "내용5"));

        // map 데이터 추가
        map.put("kr", "대한민국");
        map.put("us", "미국");
        map.put("jp", "일본");
        map.put("cn", "중국");
    }

    public String[] getNames() { // 뷰에서 ${bean.names}
        return names;
    }

    public List<String> getMenus() {
        return menus;
    }

    public List<Board> getBoardList() { // ${bean.boardList}
        return boardList;
    }

    public Map<String, String> getMap() {
        return map;
    }
}
