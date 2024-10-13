(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3989 0)
(declare-sort var3501 0)
(declare-sort var1664 0)
(declare-sort var513 0)
(declare-sort var203 0)
(declare-sort var2349 0)
(declare-sort var2479 0)
(declare-sort var913 0)
(declare-sort var539 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sheet/-1572124049 (var3989) var1664)
(declare-fun getVMLDrawing/-236837175 (var3989 var1664 Bool) var513)
(declare-fun var2349-init () var2349)
(declare-fun var3501_getRow1/-1096096537 (var3501) Int)
(declare-fun var3501_getCol1/44118368 (var3501) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun <init>/-717371935 (var2349 Int Int) void)
(declare-fun findCellComment/1328025713 (var3989 var2349) var2479)
(declare-fun var913-init () var913)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var539) String)
(declare-fun cast-from-var2349-to-var539 (var2349) var539)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var913 String) void)
(declare-const null-var3989 var3989)
(declare-const null-var3501 var3501)
(declare-const null-var513 var513)
(declare-const null-var203 var203)
(declare-const null-var2479 var2479)
(declare-const var3876 var3989) ; Statement: r0 := @this: org.apache.poi.xssf.model.CommentsTable 
(assert (not (= var3876 null-var3989)))
(declare-const var396 var3501) ; Statement: r4 := @parameter0: org.apache.poi.ss.usermodel.ClientAnchor 
(assert (not (= var396 null-var3501)))
(define-const var1624 var1664 (sheet/-1572124049 var3876)) ; Statement: $r1 = r0.<org.apache.poi.xssf.model.CommentsTable: org.apache.poi.ss.usermodel.Sheet sheet> 
(assert true)
(define-const var3027 var513 (getVMLDrawing/-236837175 var3876 var1624 (ite (= 1 1) true false))) ; Statement: r2 = specialinvoke r0.<org.apache.poi.xssf.model.CommentsTable: org.apache.poi.xssf.usermodel.XSSFVMLDrawing getVMLDrawing(org.apache.poi.ss.usermodel.Sheet,boolean)>($r1, 1) 
 ; Statement: if r2 != null goto $r31 = virtualinvoke r2.<org.apache.poi.xssf.usermodel.XSSFVMLDrawing: com.microsoft.schemas.vml.CTShape newCommentShape()>() 
(assert (not (not (= var3027 null-var513)))) ; Negate: Cond: r2 != null  
(define-const var933 var203 null-var203) ; Statement: $r31 = null 
 ; Statement: goto [?= r3 = $r31] 
(assert true) ; Non Conditional
(define-const var614 var203 var933) ; Statement: r3 = $r31 
 ; Statement: if $r31 == null goto $r35 = new org.apache.poi.ss.util.CellAddress 
(assert (= var933 null-var203)) ; Cond: $r31 == null 
(define-const var3156 var2349 var2349-init) ; Statement: $r35 = new org.apache.poi.ss.util.CellAddress 
(define-const var592 Int (var3501_getRow1/-1096096537 var396)) ; Statement: $i12 = interfaceinvoke r4.<org.apache.poi.ss.usermodel.ClientAnchor: int getRow1()>() 
(define-const var3403 Int (var3501_getCol1/44118368 var396)) ; Statement: $s13 = interfaceinvoke r4.<org.apache.poi.ss.usermodel.ClientAnchor: short getCol1()>() 
(define-const var3393 Int (cast-from-Int-to-Int var3403)) ; Statement: $i16 = (int) $s13 
(assert true)
;(assert (<init>/-717371935 var3156 var592 var3393)) ; Statement: specialinvoke $r35.<org.apache.poi.ss.util.CellAddress: void <init>(int,int)>($i12, $i16) 

(declare-const var3156!1 var2349)
(declare-const var592!1 Int)
(declare-const var3393!1 Int)
(assert true)
(define-const var2703 var2479 (findCellComment/1328025713 var3876 var3156!1)) ; Statement: $r33 = virtualinvoke r0.<org.apache.poi.xssf.model.CommentsTable: org.apache.poi.xssf.usermodel.XSSFComment findCellComment(org.apache.poi.ss.util.CellAddress)>($r35) 
 ; Statement: if $r33 == null goto $r38 = new org.apache.poi.xssf.usermodel.XSSFComment 
(assert (not (= var2703 null-var2479))) ; Negate: Cond: $r33 == null  
(define-const var1385 var913 var913-init) ; Statement: $r37 = new java.lang.IllegalArgumentException 
(define-const var3658 String String-init) ; Statement: $r36 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3658)) ; Statement: specialinvoke $r36.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3658!1 String)
(assert (= var3658!1 ""))
(assert true)
(define-const var2284 String (append/672562846 var3658!1 "Multiple cell comments in one cell are not allowed, cell: ")) ; Statement: $r9 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Multiple cell comments in one cell are not allowed, cell: ") 
(declare-const var3658!2 String)
(assert (= var3658!2 (str.++ var3658!1 "Multiple cell comments in one cell are not allowed, cell: ")))
(assert true)
(define-const var2219 String (append/-1031950772 var2284 (cast-from-var2349-to-var539 var3156!1))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r35) 
(declare-const var2284!1 String)
(assert (str.prefixof var2284 var2284!1))
(assert true)
(define-const var2341 String (toString/-2075883882 var2219)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1385 var2341)) ; Statement: specialinvoke $r37.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11) 

(declare-const var1385!1 var913)
(declare-const var2341!1 String)
 ; Statement: throw $r37 
(check-sat)
(get-model)
(get-unsat-core)
; {sheet/-1572124049=([org.apache.poi.xssf.model.CommentsTable], org.apache.poi.ss.usermodel.Sheet), getVMLDrawing/-236837175=([org.apache.poi.xssf.model.CommentsTable, org.apache.poi.ss.usermodel.Sheet, boolean], org.apache.poi.xssf.usermodel.XSSFVMLDrawing), var2349-init=([], org.apache.poi.ss.util.CellAddress), var3501_getRow1/-1096096537=([org.apache.poi.ss.usermodel.ClientAnchor], int), var3501_getCol1/44118368=([org.apache.poi.ss.usermodel.ClientAnchor], short), cast-from-Int-to-Int=([short], int), <init>/-717371935=([org.apache.poi.ss.util.CellAddress, int, int], void), findCellComment/1328025713=([org.apache.poi.xssf.model.CommentsTable, org.apache.poi.ss.util.CellAddress], org.apache.poi.xssf.usermodel.XSSFComment), var913-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2349-to-var539=([org.apache.poi.ss.util.CellAddress], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3989=org.apache.poi.xssf.model.CommentsTable, var3876=r0, var3501=org.apache.poi.ss.usermodel.ClientAnchor, var396=r4, var1664=org.apache.poi.ss.usermodel.Sheet, var1624=$r1, var513=org.apache.poi.xssf.usermodel.XSSFVMLDrawing, var3027=r2, var203=com.microsoft.schemas.vml.CTShape, var933=$r31, var614=r3, var2349=org.apache.poi.ss.util.CellAddress, var3156=$r35, var592=$i12, var3403=$s13, var3393=$i16, var2479=org.apache.poi.xssf.usermodel.XSSFComment, var2703=$r33, var913=java.lang.IllegalArgumentException, var1385=$r37, var3658=$r36, var2284=$r9, var539=java.lang.Object, var2219=$r10, var2341=$r11}
; {org.apache.poi.xssf.model.CommentsTable=var3989, r0=var3876, org.apache.poi.ss.usermodel.ClientAnchor=var3501, r4=var396, org.apache.poi.ss.usermodel.Sheet=var1664, $r1=var1624, org.apache.poi.xssf.usermodel.XSSFVMLDrawing=var513, r2=var3027, com.microsoft.schemas.vml.CTShape=var203, $r31=var933, r3=var614, org.apache.poi.ss.util.CellAddress=var2349, $r35=var3156, $i12=var592, $s13=var3403, $i16=var3393, org.apache.poi.xssf.usermodel.XSSFComment=var2479, $r33=var2703, java.lang.IllegalArgumentException=var913, $r37=var1385, $r36=var3658, $r9=var2284, java.lang.Object=var539, $r10=var2219, $r11=var2341}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xssf.model.CommentsTable;	r4 := @parameter0: org.apache.poi.ss.usermodel.ClientAnchor;	$r1 = r0.<org.apache.poi.xssf.model.CommentsTable: org.apache.poi.ss.usermodel.Sheet sheet>;	r2 = specialinvoke r0.<org.apache.poi.xssf.model.CommentsTable: org.apache.poi.xssf.usermodel.XSSFVMLDrawing getVMLDrawing(org.apache.poi.ss.usermodel.Sheet,boolean)>($r1, 1);	if r2 != null goto $r31 = virtualinvoke r2.<org.apache.poi.xssf.usermodel.XSSFVMLDrawing: com.microsoft.schemas.vml.CTShape newCommentShape()>();	$r31 = null;	goto [?= r3 = $r31];	r3 = $r31;	if $r31 == null goto $r35 = new org.apache.poi.ss.util.CellAddress;	$r35 = new org.apache.poi.ss.util.CellAddress;	$i12 = interfaceinvoke r4.<org.apache.poi.ss.usermodel.ClientAnchor: int getRow1()>();	$s13 = interfaceinvoke r4.<org.apache.poi.ss.usermodel.ClientAnchor: short getCol1()>();	$i16 = (int) $s13;	specialinvoke $r35.<org.apache.poi.ss.util.CellAddress: void <init>(int,int)>($i12, $i16);	$r33 = virtualinvoke r0.<org.apache.poi.xssf.model.CommentsTable: org.apache.poi.xssf.usermodel.XSSFComment findCellComment(org.apache.poi.ss.util.CellAddress)>($r35);	if $r33 == null goto $r38 = new org.apache.poi.xssf.usermodel.XSSFComment;	$r37 = new java.lang.IllegalArgumentException;	$r36 = new java.lang.StringBuilder;	specialinvoke $r36.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Multiple cell comments in one cell are not allowed, cell: ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r35);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r37.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11);	throw $r37
;block_num 5