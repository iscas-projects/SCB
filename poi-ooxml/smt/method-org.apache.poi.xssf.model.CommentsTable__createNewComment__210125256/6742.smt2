(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1961 0)
(declare-sort var3467 0)
(declare-sort var2036 0)
(declare-sort var1724 0)
(declare-sort var621 0)
(declare-sort var3351 0)
(declare-sort var1971 0)
(declare-sort var332 0)
(declare-sort var3941 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sheet/-1572124049 (var1961) var2036)
(declare-fun getVMLDrawing/-236837175 (var1961 var2036 Bool) var1724)
(declare-fun newCommentShape/-1473246276 (var1724) var621)
(declare-fun var3351-init () var3351)
(declare-fun var3467_getRow1/-1096096537 (var3467) Int)
(declare-fun var3467_getCol1/44118368 (var3467) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun <init>/-717371935 (var3351 Int Int) void)
(declare-fun findCellComment/1328025713 (var1961 var3351) var1971)
(declare-fun var332-init () var332)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3941) String)
(declare-fun cast-from-var3351-to-var3941 (var3351) var3941)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var332 String) void)
(declare-const null-var1961 var1961)
(declare-const null-var3467 var3467)
(declare-const null-var1724 var1724)
(declare-const null-var621 var621)
(declare-const null-var1971 var1971)
(declare-const var458 var1961) ; Statement: r0 := @this: org.apache.poi.xssf.model.CommentsTable 
(assert (not (= var458 null-var1961)))
(declare-const var2580 var3467) ; Statement: r4 := @parameter0: org.apache.poi.ss.usermodel.ClientAnchor 
(assert (not (= var2580 null-var3467)))
(define-const var1004 var2036 (sheet/-1572124049 var458)) ; Statement: $r1 = r0.<org.apache.poi.xssf.model.CommentsTable: org.apache.poi.ss.usermodel.Sheet sheet> 
(assert true)
(define-const var2043 var1724 (getVMLDrawing/-236837175 var458 var1004 (ite (= 1 1) true false))) ; Statement: r2 = specialinvoke r0.<org.apache.poi.xssf.model.CommentsTable: org.apache.poi.xssf.usermodel.XSSFVMLDrawing getVMLDrawing(org.apache.poi.ss.usermodel.Sheet,boolean)>($r1, 1) 
 ; Statement: if r2 != null goto $r31 = virtualinvoke r2.<org.apache.poi.xssf.usermodel.XSSFVMLDrawing: com.microsoft.schemas.vml.CTShape newCommentShape()>() 
(assert (not (= var2043 null-var1724))) ; Cond: r2 != null 
(assert true)
(define-const var1401 var621 (newCommentShape/-1473246276 var2043)) ; Statement: $r31 = virtualinvoke r2.<org.apache.poi.xssf.usermodel.XSSFVMLDrawing: com.microsoft.schemas.vml.CTShape newCommentShape()>() 
(assert true) ; Non Conditional
(define-const var550 var621 var1401) ; Statement: r3 = $r31 
 ; Statement: if $r31 == null goto $r35 = new org.apache.poi.ss.util.CellAddress 
(assert (= var1401 null-var621)) ; Cond: $r31 == null 
(define-const var662 var3351 var3351-init) ; Statement: $r35 = new org.apache.poi.ss.util.CellAddress 
(define-const var879 Int (var3467_getRow1/-1096096537 var2580)) ; Statement: $i12 = interfaceinvoke r4.<org.apache.poi.ss.usermodel.ClientAnchor: int getRow1()>() 
(define-const var3891 Int (var3467_getCol1/44118368 var2580)) ; Statement: $s13 = interfaceinvoke r4.<org.apache.poi.ss.usermodel.ClientAnchor: short getCol1()>() 
(define-const var507 Int (cast-from-Int-to-Int var3891)) ; Statement: $i16 = (int) $s13 
(assert true)
;(assert (<init>/-717371935 var662 var879 var507)) ; Statement: specialinvoke $r35.<org.apache.poi.ss.util.CellAddress: void <init>(int,int)>($i12, $i16) 

(declare-const var662!1 var3351)
(declare-const var879!1 Int)
(declare-const var507!1 Int)
(assert true)
(define-const var1868 var1971 (findCellComment/1328025713 var458 var662!1)) ; Statement: $r33 = virtualinvoke r0.<org.apache.poi.xssf.model.CommentsTable: org.apache.poi.xssf.usermodel.XSSFComment findCellComment(org.apache.poi.ss.util.CellAddress)>($r35) 
 ; Statement: if $r33 == null goto $r38 = new org.apache.poi.xssf.usermodel.XSSFComment 
(assert (not (= var1868 null-var1971))) ; Negate: Cond: $r33 == null  
(define-const var1032 var332 var332-init) ; Statement: $r37 = new java.lang.IllegalArgumentException 
(define-const var2326 String String-init) ; Statement: $r36 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2326)) ; Statement: specialinvoke $r36.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2326!1 String)
(assert (= var2326!1 ""))
(assert true)
(define-const var3520 String (append/672562846 var2326!1 "Multiple cell comments in one cell are not allowed, cell: ")) ; Statement: $r9 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Multiple cell comments in one cell are not allowed, cell: ") 
(declare-const var2326!2 String)
(assert (= var2326!2 (str.++ var2326!1 "Multiple cell comments in one cell are not allowed, cell: ")))
(assert true)
(define-const var2941 String (append/-1031950772 var3520 (cast-from-var3351-to-var3941 var662!1))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r35) 
(declare-const var3520!1 String)
(assert (str.prefixof var3520 var3520!1))
(assert true)
(define-const var3087 String (toString/-2075883882 var2941)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1032 var3087)) ; Statement: specialinvoke $r37.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11) 

(declare-const var1032!1 var332)
(declare-const var3087!1 String)
 ; Statement: throw $r37 
(check-sat)
(get-model)
(get-unsat-core)
; {sheet/-1572124049=([org.apache.poi.xssf.model.CommentsTable], org.apache.poi.ss.usermodel.Sheet), getVMLDrawing/-236837175=([org.apache.poi.xssf.model.CommentsTable, org.apache.poi.ss.usermodel.Sheet, boolean], org.apache.poi.xssf.usermodel.XSSFVMLDrawing), newCommentShape/-1473246276=([org.apache.poi.xssf.usermodel.XSSFVMLDrawing], com.microsoft.schemas.vml.CTShape), var3351-init=([], org.apache.poi.ss.util.CellAddress), var3467_getRow1/-1096096537=([org.apache.poi.ss.usermodel.ClientAnchor], int), var3467_getCol1/44118368=([org.apache.poi.ss.usermodel.ClientAnchor], short), cast-from-Int-to-Int=([short], int), <init>/-717371935=([org.apache.poi.ss.util.CellAddress, int, int], void), findCellComment/1328025713=([org.apache.poi.xssf.model.CommentsTable, org.apache.poi.ss.util.CellAddress], org.apache.poi.xssf.usermodel.XSSFComment), var332-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3351-to-var3941=([org.apache.poi.ss.util.CellAddress], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1961=org.apache.poi.xssf.model.CommentsTable, var458=r0, var3467=org.apache.poi.ss.usermodel.ClientAnchor, var2580=r4, var2036=org.apache.poi.ss.usermodel.Sheet, var1004=$r1, var1724=org.apache.poi.xssf.usermodel.XSSFVMLDrawing, var2043=r2, var621=com.microsoft.schemas.vml.CTShape, var1401=$r31, var550=r3, var3351=org.apache.poi.ss.util.CellAddress, var662=$r35, var879=$i12, var3891=$s13, var507=$i16, var1971=org.apache.poi.xssf.usermodel.XSSFComment, var1868=$r33, var332=java.lang.IllegalArgumentException, var1032=$r37, var2326=$r36, var3520=$r9, var3941=java.lang.Object, var2941=$r10, var3087=$r11}
; {org.apache.poi.xssf.model.CommentsTable=var1961, r0=var458, org.apache.poi.ss.usermodel.ClientAnchor=var3467, r4=var2580, org.apache.poi.ss.usermodel.Sheet=var2036, $r1=var1004, org.apache.poi.xssf.usermodel.XSSFVMLDrawing=var1724, r2=var2043, com.microsoft.schemas.vml.CTShape=var621, $r31=var1401, r3=var550, org.apache.poi.ss.util.CellAddress=var3351, $r35=var662, $i12=var879, $s13=var3891, $i16=var507, org.apache.poi.xssf.usermodel.XSSFComment=var1971, $r33=var1868, java.lang.IllegalArgumentException=var332, $r37=var1032, $r36=var2326, $r9=var3520, java.lang.Object=var3941, $r10=var2941, $r11=var3087}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.model.CommentsTable;	r4 := @parameter0: org.apache.poi.ss.usermodel.ClientAnchor;	$r1 = r0.<org.apache.poi.xssf.model.CommentsTable: org.apache.poi.ss.usermodel.Sheet sheet>;	r2 = specialinvoke r0.<org.apache.poi.xssf.model.CommentsTable: org.apache.poi.xssf.usermodel.XSSFVMLDrawing getVMLDrawing(org.apache.poi.ss.usermodel.Sheet,boolean)>($r1, 1);	if r2 != null goto $r31 = virtualinvoke r2.<org.apache.poi.xssf.usermodel.XSSFVMLDrawing: com.microsoft.schemas.vml.CTShape newCommentShape()>();	$r31 = virtualinvoke r2.<org.apache.poi.xssf.usermodel.XSSFVMLDrawing: com.microsoft.schemas.vml.CTShape newCommentShape()>();	r3 = $r31;	if $r31 == null goto $r35 = new org.apache.poi.ss.util.CellAddress;	$r35 = new org.apache.poi.ss.util.CellAddress;	$i12 = interfaceinvoke r4.<org.apache.poi.ss.usermodel.ClientAnchor: int getRow1()>();	$s13 = interfaceinvoke r4.<org.apache.poi.ss.usermodel.ClientAnchor: short getCol1()>();	$i16 = (int) $s13;	specialinvoke $r35.<org.apache.poi.ss.util.CellAddress: void <init>(int,int)>($i12, $i16);	$r33 = virtualinvoke r0.<org.apache.poi.xssf.model.CommentsTable: org.apache.poi.xssf.usermodel.XSSFComment findCellComment(org.apache.poi.ss.util.CellAddress)>($r35);	if $r33 == null goto $r38 = new org.apache.poi.xssf.usermodel.XSSFComment;	$r37 = new java.lang.IllegalArgumentException;	$r36 = new java.lang.StringBuilder;	specialinvoke $r36.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Multiple cell comments in one cell are not allowed, cell: ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r35);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r37.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11);	throw $r37
;block_num 5