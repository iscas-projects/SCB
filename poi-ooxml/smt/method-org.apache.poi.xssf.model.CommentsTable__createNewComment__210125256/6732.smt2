(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var181 0)
(declare-sort var1301 0)
(declare-sort var2170 0)
(declare-sort var2875 0)
(declare-sort var2639 0)
(declare-sort var46 0)
(declare-sort var3887 0)
(declare-sort var3431 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sheet/-1572124049 (var181) var2170)
(declare-fun getVMLDrawing/-236837175 (var181 var2170 Bool) var2875)
(declare-fun var46-init () var46)
(declare-fun var1301_getRow1/-1096096537 (var1301) Int)
(declare-fun var1301_getCol1/44118368 (var1301) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun <init>/-717371935 (var46 Int Int) void)
(declare-fun findCellComment/1328025713 (var181 var46) var3887)
(declare-fun var3887-init () var3887)
(declare-fun newComment/-261625762 (var181 var46) var3431)
(declare-fun <init>/-294766646 (var3887 var181 var3431 var2639) void)
(declare-const null-var181 var181)
(declare-const null-var1301 var1301)
(declare-const null-var2875 var2875)
(declare-const null-var2639 var2639)
(declare-const null-var3887 var3887)
(declare-const var146 var181) ; Statement: r0 := @this: org.apache.poi.xssf.model.CommentsTable 
(assert (not (= var146 null-var181)))
(declare-const var430 var1301) ; Statement: r4 := @parameter0: org.apache.poi.ss.usermodel.ClientAnchor 
(assert (not (= var430 null-var1301)))
(define-const var1146 var2170 (sheet/-1572124049 var146)) ; Statement: $r1 = r0.<org.apache.poi.xssf.model.CommentsTable: org.apache.poi.ss.usermodel.Sheet sheet> 
(assert true)
(define-const var3004 var2875 (getVMLDrawing/-236837175 var146 var1146 (ite (= 1 1) true false))) ; Statement: r2 = specialinvoke r0.<org.apache.poi.xssf.model.CommentsTable: org.apache.poi.xssf.usermodel.XSSFVMLDrawing getVMLDrawing(org.apache.poi.ss.usermodel.Sheet,boolean)>($r1, 1) 
 ; Statement: if r2 != null goto $r31 = virtualinvoke r2.<org.apache.poi.xssf.usermodel.XSSFVMLDrawing: com.microsoft.schemas.vml.CTShape newCommentShape()>() 
(assert (not (not (= var3004 null-var2875)))) ; Negate: Cond: r2 != null  
(define-const var844 var2639 null-var2639) ; Statement: $r31 = null 
 ; Statement: goto [?= r3 = $r31] 
(assert true) ; Non Conditional
(define-const var1472 var2639 var844) ; Statement: r3 = $r31 
 ; Statement: if $r31 == null goto $r35 = new org.apache.poi.ss.util.CellAddress 
(assert (= var844 null-var2639)) ; Cond: $r31 == null 
(define-const var2692 var46 var46-init) ; Statement: $r35 = new org.apache.poi.ss.util.CellAddress 
(define-const var3832 Int (var1301_getRow1/-1096096537 var430)) ; Statement: $i12 = interfaceinvoke r4.<org.apache.poi.ss.usermodel.ClientAnchor: int getRow1()>() 
(define-const var2224 Int (var1301_getCol1/44118368 var430)) ; Statement: $s13 = interfaceinvoke r4.<org.apache.poi.ss.usermodel.ClientAnchor: short getCol1()>() 
(define-const var3738 Int (cast-from-Int-to-Int var2224)) ; Statement: $i16 = (int) $s13 
(assert true)
;(assert (<init>/-717371935 var2692 var3832 var3738)) ; Statement: specialinvoke $r35.<org.apache.poi.ss.util.CellAddress: void <init>(int,int)>($i12, $i16) 

(declare-const var2692!1 var46)
(declare-const var3832!1 Int)
(declare-const var3738!1 Int)
(assert true)
(define-const var3261 var3887 (findCellComment/1328025713 var146 var2692!1)) ; Statement: $r33 = virtualinvoke r0.<org.apache.poi.xssf.model.CommentsTable: org.apache.poi.xssf.usermodel.XSSFComment findCellComment(org.apache.poi.ss.util.CellAddress)>($r35) 
 ; Statement: if $r33 == null goto $r38 = new org.apache.poi.xssf.usermodel.XSSFComment 
(assert (= var3261 null-var3887)) ; Cond: $r33 == null 
(define-const var3395 var3887 var3887-init) ; Statement: $r38 = new org.apache.poi.xssf.usermodel.XSSFComment 
(assert true)
(define-const var1460 var3431 (newComment/-261625762 var146 var2692!1)) ; Statement: $r6 = virtualinvoke r0.<org.apache.poi.xssf.model.CommentsTable: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTComment newComment(org.apache.poi.ss.util.CellAddress)>($r35) 
(assert true)
;(assert (<init>/-294766646 var3395 var146 var1460 var1472)) ; Statement: specialinvoke $r38.<org.apache.poi.xssf.usermodel.XSSFComment: void <init>(org.apache.poi.xssf.model.CommentsTable,org.openxmlformats.schemas.spreadsheetml.x2006.main.CTComment,com.microsoft.schemas.vml.CTShape)>(r0, $r6, r3) 

(declare-const var3395!1 var3887)
(declare-const var146!1 var181)
(declare-const var1460!1 var3431)
(declare-const var1472!1 var2639)
 ; Statement: return $r38 
(check-sat)
(get-model)
(get-unsat-core)
; {sheet/-1572124049=([org.apache.poi.xssf.model.CommentsTable], org.apache.poi.ss.usermodel.Sheet), getVMLDrawing/-236837175=([org.apache.poi.xssf.model.CommentsTable, org.apache.poi.ss.usermodel.Sheet, boolean], org.apache.poi.xssf.usermodel.XSSFVMLDrawing), var46-init=([], org.apache.poi.ss.util.CellAddress), var1301_getRow1/-1096096537=([org.apache.poi.ss.usermodel.ClientAnchor], int), var1301_getCol1/44118368=([org.apache.poi.ss.usermodel.ClientAnchor], short), cast-from-Int-to-Int=([short], int), <init>/-717371935=([org.apache.poi.ss.util.CellAddress, int, int], void), findCellComment/1328025713=([org.apache.poi.xssf.model.CommentsTable, org.apache.poi.ss.util.CellAddress], org.apache.poi.xssf.usermodel.XSSFComment), var3887-init=([], org.apache.poi.xssf.usermodel.XSSFComment), newComment/-261625762=([org.apache.poi.xssf.model.CommentsTable, org.apache.poi.ss.util.CellAddress], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTComment), <init>/-294766646=([org.apache.poi.xssf.usermodel.XSSFComment, org.apache.poi.xssf.model.CommentsTable, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTComment, com.microsoft.schemas.vml.CTShape], void)}
; {var181=org.apache.poi.xssf.model.CommentsTable, var146=r0, var1301=org.apache.poi.ss.usermodel.ClientAnchor, var430=r4, var2170=org.apache.poi.ss.usermodel.Sheet, var1146=$r1, var2875=org.apache.poi.xssf.usermodel.XSSFVMLDrawing, var3004=r2, var2639=com.microsoft.schemas.vml.CTShape, var844=$r31, var1472=r3, var46=org.apache.poi.ss.util.CellAddress, var2692=$r35, var3832=$i12, var2224=$s13, var3738=$i16, var3887=org.apache.poi.xssf.usermodel.XSSFComment, var3261=$r33, var3395=$r38, var3431=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTComment, var1460=$r6}
; {org.apache.poi.xssf.model.CommentsTable=var181, r0=var146, org.apache.poi.ss.usermodel.ClientAnchor=var1301, r4=var430, org.apache.poi.ss.usermodel.Sheet=var2170, $r1=var1146, org.apache.poi.xssf.usermodel.XSSFVMLDrawing=var2875, r2=var3004, com.microsoft.schemas.vml.CTShape=var2639, $r31=var844, r3=var1472, org.apache.poi.ss.util.CellAddress=var46, $r35=var2692, $i12=var3832, $s13=var2224, $i16=var3738, org.apache.poi.xssf.usermodel.XSSFComment=var3887, $r33=var3261, $r38=var3395, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTComment=var3431, $r6=var1460}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.poi.xssf.model.CommentsTable;	r4 := @parameter0: org.apache.poi.ss.usermodel.ClientAnchor;	$r1 = r0.<org.apache.poi.xssf.model.CommentsTable: org.apache.poi.ss.usermodel.Sheet sheet>;	r2 = specialinvoke r0.<org.apache.poi.xssf.model.CommentsTable: org.apache.poi.xssf.usermodel.XSSFVMLDrawing getVMLDrawing(org.apache.poi.ss.usermodel.Sheet,boolean)>($r1, 1);	if r2 != null goto $r31 = virtualinvoke r2.<org.apache.poi.xssf.usermodel.XSSFVMLDrawing: com.microsoft.schemas.vml.CTShape newCommentShape()>();	$r31 = null;	goto [?= r3 = $r31];	r3 = $r31;	if $r31 == null goto $r35 = new org.apache.poi.ss.util.CellAddress;	$r35 = new org.apache.poi.ss.util.CellAddress;	$i12 = interfaceinvoke r4.<org.apache.poi.ss.usermodel.ClientAnchor: int getRow1()>();	$s13 = interfaceinvoke r4.<org.apache.poi.ss.usermodel.ClientAnchor: short getCol1()>();	$i16 = (int) $s13;	specialinvoke $r35.<org.apache.poi.ss.util.CellAddress: void <init>(int,int)>($i12, $i16);	$r33 = virtualinvoke r0.<org.apache.poi.xssf.model.CommentsTable: org.apache.poi.xssf.usermodel.XSSFComment findCellComment(org.apache.poi.ss.util.CellAddress)>($r35);	if $r33 == null goto $r38 = new org.apache.poi.xssf.usermodel.XSSFComment;	$r38 = new org.apache.poi.xssf.usermodel.XSSFComment;	$r6 = virtualinvoke r0.<org.apache.poi.xssf.model.CommentsTable: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTComment newComment(org.apache.poi.ss.util.CellAddress)>($r35);	specialinvoke $r38.<org.apache.poi.xssf.usermodel.XSSFComment: void <init>(org.apache.poi.xssf.model.CommentsTable,org.openxmlformats.schemas.spreadsheetml.x2006.main.CTComment,com.microsoft.schemas.vml.CTShape)>(r0, $r6, r3);	return $r38
;block_num 5