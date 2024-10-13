(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var117 0)
(declare-sort var3694 0)
(declare-sort var3874 0)
(declare-sort var2027 0)
(declare-sort var3593 0)
(declare-sort var3432 0)
(declare-sort var2093 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var2027) void)
(declare-fun cast-from-var117-to-var2027 (var117) var2027)
(declare-fun var3593-init () var3593)
(declare-fun <init>/-168629465 (var3593) void)
(declare-fun _rows/107529840 (var117) var3593)
(declare-fun _randomAccessWindowSize/107529840 (var117) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun lastFlushedRowNumber/107529840 (var117) Int)
(declare-fun getLastColumnIndex/-111059718 (var3432) Int)
(declare-fun leftMostColumn/107529840 (var117) Int)
(declare-fun _workbook/107529840 (var117) var3694)
(declare-fun _sh/107529840 (var117) var3874)
(declare-fun calculateLeftAndRightMostColumns/-1300231766 (var117 var3874) void)
(declare-fun setRandomAccessWindowSize/164464764 (var117 Int) void)
(declare-fun getMessage/849299655 (var2093) String)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-var117 var117)
(declare-const null-var3694 var3694)
(declare-const null-var3874 var3874)
(declare-const null-Int Int)
(declare-const var3432-EXCEL2007 var3432)
(declare-const null-var2093 var2093)
(declare-const var680 var117) ; Statement: r0 := @this: org.apache.poi.xssf.streaming.SXSSFSheet 
(assert (not (= var680 null-var117)))
(declare-const var251 var3694) ; Statement: r3 := @parameter0: org.apache.poi.xssf.streaming.SXSSFWorkbook 
(assert (not (= var251 null-var3694)))
(declare-const var60 var3874) ; Statement: r4 := @parameter1: org.apache.poi.xssf.usermodel.XSSFSheet 
(assert (not (= var60 null-var3874)))
(declare-const var790 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var790 null-Int)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var117-to-var2027 var680))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var680!1 var117)
(define-const var1799 var3593 var3593-init) ; Statement: $r11 = new java.util.TreeMap 
(assert true)
;(assert (<init>/-168629465 var1799)) ; Statement: specialinvoke $r11.<java.util.TreeMap: void <init>()>() 

(declare-const var1799!1 var3593)
(declare-const var680!2 var117)
(assert (not (= var680!2 null-var117)))
(assert (= (_rows/107529840 var680!2) var1799!1)) ; Statement: r0.<org.apache.poi.xssf.streaming.SXSSFSheet: java.util.TreeMap _rows> = $r11 
(declare-const var680!3 var117)
(assert (not (= var680!3 null-var117)))
(assert (= (_randomAccessWindowSize/107529840 var680!3) 100)) ; Statement: r0.<org.apache.poi.xssf.streaming.SXSSFSheet: int _randomAccessWindowSize> = 100 
(define-const var2986 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i3 = (int) -1 
(declare-const var680!4 var117)
(assert (not (= var680!4 null-var117)))
(assert (= (lastFlushedRowNumber/107529840 var680!4) var2986)) ; Statement: r0.<org.apache.poi.xssf.streaming.SXSSFSheet: int lastFlushedRowNumber> = $i3 
(define-const var2124 var3432 var3432-EXCEL2007) ; Statement: $r2 = <org.apache.poi.ss.SpreadsheetVersion: org.apache.poi.ss.SpreadsheetVersion EXCEL2007> 
(assert true)
(define-const var1737 Int (getLastColumnIndex/-111059718 var2124)) ; Statement: $i0 = virtualinvoke $r2.<org.apache.poi.ss.SpreadsheetVersion: int getLastColumnIndex()>() 
(declare-const var680!5 var117)
(assert (not (= var680!5 null-var117)))
(assert (= (leftMostColumn/107529840 var680!5) var1737)) ; Statement: r0.<org.apache.poi.xssf.streaming.SXSSFSheet: int leftMostColumn> = $i0 
(declare-const var680!6 var117)
(assert (not (= var680!6 null-var117)))
(assert (= (_workbook/107529840 var680!6) var251)) ; Statement: r0.<org.apache.poi.xssf.streaming.SXSSFSheet: org.apache.poi.xssf.streaming.SXSSFWorkbook _workbook> = r3 
(declare-const var680!7 var117)
(assert (not (= var680!7 null-var117)))
(assert (= (_sh/107529840 var680!7) var60)) ; Statement: r0.<org.apache.poi.xssf.streaming.SXSSFSheet: org.apache.poi.xssf.usermodel.XSSFSheet _sh> = r4 
(assert true)
;(assert (calculateLeftAndRightMostColumns/-1300231766 var680!7 var60)) ; Statement: specialinvoke r0.<org.apache.poi.xssf.streaming.SXSSFSheet: void calculateLeftAndRightMostColumns(org.apache.poi.xssf.usermodel.XSSFSheet)>(r4) 

(declare-const var680!8 var117)
(declare-const var60!1 var3874)
(assert true)
;(assert (setRandomAccessWindowSize/164464764 var680!8 var790)) ; Statement: virtualinvoke r0.<org.apache.poi.xssf.streaming.SXSSFSheet: void setRandomAccessWindowSize(int)>(i1) 

(declare-const var680!9 var117)
(declare-const var790!1 Int)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2602 var2093) ; Statement: $r6 := @caughtexception 
(assert (not (= var2602 null-var2093)))
(assert true)
(define-const var3555 String (getMessage/849299655 var2602)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.Throwable: java.lang.String getMessage()>() 
(assert true)
(define-const var2750 Bool (contains/1009244746 var3555 (cast-from-String-to-String "X11FontManager"))) ; Statement: $z0 = virtualinvoke $r7.<java.lang.String: boolean contains(java.lang.CharSequence)>("X11FontManager") 
 ; Statement: if $z0 != 0 goto $r8 = <org.apache.poi.xssf.streaming.SXSSFSheet: org.apache.logging.log4j.Logger LOG> 
(assert (not (not (= (ite var2750 1 0) 0)))) ; Negate: Cond: $z0 != 0  
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var117-to-var2027=([org.apache.poi.xssf.streaming.SXSSFSheet], java.lang.Object), var3593-init=([], java.util.TreeMap), <init>/-168629465=([java.util.TreeMap], void), _rows/107529840=([org.apache.poi.xssf.streaming.SXSSFSheet], java.util.TreeMap), _randomAccessWindowSize/107529840=([org.apache.poi.xssf.streaming.SXSSFSheet], int), cast-from-Int-to-Int=([int], int), lastFlushedRowNumber/107529840=([org.apache.poi.xssf.streaming.SXSSFSheet], int), getLastColumnIndex/-111059718=([org.apache.poi.ss.SpreadsheetVersion], int), leftMostColumn/107529840=([org.apache.poi.xssf.streaming.SXSSFSheet], int), _workbook/107529840=([org.apache.poi.xssf.streaming.SXSSFSheet], org.apache.poi.xssf.streaming.SXSSFWorkbook), _sh/107529840=([org.apache.poi.xssf.streaming.SXSSFSheet], org.apache.poi.xssf.usermodel.XSSFSheet), calculateLeftAndRightMostColumns/-1300231766=([org.apache.poi.xssf.streaming.SXSSFSheet, org.apache.poi.xssf.usermodel.XSSFSheet], void), setRandomAccessWindowSize/164464764=([org.apache.poi.xssf.streaming.SXSSFSheet, int], void), getMessage/849299655=([java.lang.Throwable], java.lang.String), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var117=org.apache.poi.xssf.streaming.SXSSFSheet, var680=r0, var3694=org.apache.poi.xssf.streaming.SXSSFWorkbook, var251=r3, var3874=org.apache.poi.xssf.usermodel.XSSFSheet, var60=r4, var790=i1, var2027=java.lang.Object, var3593=java.util.TreeMap, var1799=$r11, var2986=$i3, var3432=org.apache.poi.ss.SpreadsheetVersion, var2124=$r2, var1737=$i0, var2093=java.lang.Throwable, var2602=$r6, var3555=$r7, var2750=$z0}
; {org.apache.poi.xssf.streaming.SXSSFSheet=var117, r0=var680, org.apache.poi.xssf.streaming.SXSSFWorkbook=var3694, r3=var251, org.apache.poi.xssf.usermodel.XSSFSheet=var3874, r4=var60, i1=var790, java.lang.Object=var2027, java.util.TreeMap=var3593, $r11=var1799, $i3=var2986, org.apache.poi.ss.SpreadsheetVersion=var3432, $r2=var2124, $i0=var1737, java.lang.Throwable=var2093, $r6=var2602, $r7=var3555, $z0=var2750}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r0 := @this: org.apache.poi.xssf.streaming.SXSSFSheet;	r3 := @parameter0: org.apache.poi.xssf.streaming.SXSSFWorkbook;	r4 := @parameter1: org.apache.poi.xssf.usermodel.XSSFSheet;	i1 := @parameter2: int;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r11 = new java.util.TreeMap;	specialinvoke $r11.<java.util.TreeMap: void <init>()>();	r0.<org.apache.poi.xssf.streaming.SXSSFSheet: java.util.TreeMap _rows> = $r11;	r0.<org.apache.poi.xssf.streaming.SXSSFSheet: int _randomAccessWindowSize> = 100;	$i3 = (int) -1;	r0.<org.apache.poi.xssf.streaming.SXSSFSheet: int lastFlushedRowNumber> = $i3;	$r2 = <org.apache.poi.ss.SpreadsheetVersion: org.apache.poi.ss.SpreadsheetVersion EXCEL2007>;	$i0 = virtualinvoke $r2.<org.apache.poi.ss.SpreadsheetVersion: int getLastColumnIndex()>();	r0.<org.apache.poi.xssf.streaming.SXSSFSheet: int leftMostColumn> = $i0;	r0.<org.apache.poi.xssf.streaming.SXSSFSheet: org.apache.poi.xssf.streaming.SXSSFWorkbook _workbook> = r3;	r0.<org.apache.poi.xssf.streaming.SXSSFSheet: org.apache.poi.xssf.usermodel.XSSFSheet _sh> = r4;	specialinvoke r0.<org.apache.poi.xssf.streaming.SXSSFSheet: void calculateLeftAndRightMostColumns(org.apache.poi.xssf.usermodel.XSSFSheet)>(r4);	virtualinvoke r0.<org.apache.poi.xssf.streaming.SXSSFSheet: void setRandomAccessWindowSize(int)>(i1);	$r6 := @caughtexception;	$r7 = virtualinvoke $r6.<java.lang.Throwable: java.lang.String getMessage()>();	$z0 = virtualinvoke $r7.<java.lang.String: boolean contains(java.lang.CharSequence)>("X11FontManager");	if $z0 != 0 goto $r8 = <org.apache.poi.xssf.streaming.SXSSFSheet: org.apache.logging.log4j.Logger LOG>;	throw $r6
;block_num 3