(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2731 0)
(declare-sort var1778 0)
(declare-sort var1376 0)
(declare-sort var2362 0)
(declare-sort var65 0)
(declare-sort var3714 0)
(declare-sort var1513 0)
(declare-sort var3706 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sheet/-1572124049 (var2731) var1376)
(declare-fun getVMLDrawing/-236837175 (var2731 var1376 Bool) var2362)
(declare-fun newCommentShape/-1473246276 (var2362) var65)
(declare-fun var3714-init () var3714)
(declare-fun var1778_getRow1/-1096096537 (var1778) Int)
(declare-fun var1778_getCol1/44118368 (var1778) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun <init>/-717371935 (var3714 Int Int) void)
(declare-fun findCellComment/1328025713 (var2731 var3714) var1513)
(declare-fun var1513-init () var1513)
(declare-fun newComment/-261625762 (var2731 var3714) var3706)
(declare-fun <init>/-294766646 (var1513 var2731 var3706 var65) void)
(declare-const null-var2731 var2731)
(declare-const null-var1778 var1778)
(declare-const null-var2362 var2362)
(declare-const null-var65 var65)
(declare-const null-var1513 var1513)
(declare-const var2953 var2731) ; Statement: r0 := @this: org.apache.poi.xssf.model.CommentsTable 
(assert (not (= var2953 null-var2731)))
(declare-const var2540 var1778) ; Statement: r4 := @parameter0: org.apache.poi.ss.usermodel.ClientAnchor 
(assert (not (= var2540 null-var1778)))
(define-const var2751 var1376 (sheet/-1572124049 var2953)) ; Statement: $r1 = r0.<org.apache.poi.xssf.model.CommentsTable: org.apache.poi.ss.usermodel.Sheet sheet> 
(assert true)
(define-const var1123 var2362 (getVMLDrawing/-236837175 var2953 var2751 (ite (= 1 1) true false))) ; Statement: r2 = specialinvoke r0.<org.apache.poi.xssf.model.CommentsTable: org.apache.poi.xssf.usermodel.XSSFVMLDrawing getVMLDrawing(org.apache.poi.ss.usermodel.Sheet,boolean)>($r1, 1) 
 ; Statement: if r2 != null goto $r31 = virtualinvoke r2.<org.apache.poi.xssf.usermodel.XSSFVMLDrawing: com.microsoft.schemas.vml.CTShape newCommentShape()>() 
(assert (not (= var1123 null-var2362))) ; Cond: r2 != null 
(assert true)
(define-const var6 var65 (newCommentShape/-1473246276 var1123)) ; Statement: $r31 = virtualinvoke r2.<org.apache.poi.xssf.usermodel.XSSFVMLDrawing: com.microsoft.schemas.vml.CTShape newCommentShape()>() 
(assert true) ; Non Conditional
(define-const var3466 var65 var6) ; Statement: r3 = $r31 
 ; Statement: if $r31 == null goto $r35 = new org.apache.poi.ss.util.CellAddress 
(assert (= var6 null-var65)) ; Cond: $r31 == null 
(define-const var1394 var3714 var3714-init) ; Statement: $r35 = new org.apache.poi.ss.util.CellAddress 
(define-const var1499 Int (var1778_getRow1/-1096096537 var2540)) ; Statement: $i12 = interfaceinvoke r4.<org.apache.poi.ss.usermodel.ClientAnchor: int getRow1()>() 
(define-const var456 Int (var1778_getCol1/44118368 var2540)) ; Statement: $s13 = interfaceinvoke r4.<org.apache.poi.ss.usermodel.ClientAnchor: short getCol1()>() 
(define-const var1305 Int (cast-from-Int-to-Int var456)) ; Statement: $i16 = (int) $s13 
(assert true)
;(assert (<init>/-717371935 var1394 var1499 var1305)) ; Statement: specialinvoke $r35.<org.apache.poi.ss.util.CellAddress: void <init>(int,int)>($i12, $i16) 

(declare-const var1394!1 var3714)
(declare-const var1499!1 Int)
(declare-const var1305!1 Int)
(assert true)
(define-const var3815 var1513 (findCellComment/1328025713 var2953 var1394!1)) ; Statement: $r33 = virtualinvoke r0.<org.apache.poi.xssf.model.CommentsTable: org.apache.poi.xssf.usermodel.XSSFComment findCellComment(org.apache.poi.ss.util.CellAddress)>($r35) 
 ; Statement: if $r33 == null goto $r38 = new org.apache.poi.xssf.usermodel.XSSFComment 
(assert (= var3815 null-var1513)) ; Cond: $r33 == null 
(define-const var2758 var1513 var1513-init) ; Statement: $r38 = new org.apache.poi.xssf.usermodel.XSSFComment 
(assert true)
(define-const var1735 var3706 (newComment/-261625762 var2953 var1394!1)) ; Statement: $r6 = virtualinvoke r0.<org.apache.poi.xssf.model.CommentsTable: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTComment newComment(org.apache.poi.ss.util.CellAddress)>($r35) 
(assert true)
;(assert (<init>/-294766646 var2758 var2953 var1735 var3466)) ; Statement: specialinvoke $r38.<org.apache.poi.xssf.usermodel.XSSFComment: void <init>(org.apache.poi.xssf.model.CommentsTable,org.openxmlformats.schemas.spreadsheetml.x2006.main.CTComment,com.microsoft.schemas.vml.CTShape)>(r0, $r6, r3) 

(declare-const var2758!1 var1513)
(declare-const var2953!1 var2731)
(declare-const var1735!1 var3706)
(declare-const var3466!1 var65)
 ; Statement: return $r38 
(check-sat)
(get-model)
(get-unsat-core)
; {sheet/-1572124049=([org.apache.poi.xssf.model.CommentsTable], org.apache.poi.ss.usermodel.Sheet), getVMLDrawing/-236837175=([org.apache.poi.xssf.model.CommentsTable, org.apache.poi.ss.usermodel.Sheet, boolean], org.apache.poi.xssf.usermodel.XSSFVMLDrawing), newCommentShape/-1473246276=([org.apache.poi.xssf.usermodel.XSSFVMLDrawing], com.microsoft.schemas.vml.CTShape), var3714-init=([], org.apache.poi.ss.util.CellAddress), var1778_getRow1/-1096096537=([org.apache.poi.ss.usermodel.ClientAnchor], int), var1778_getCol1/44118368=([org.apache.poi.ss.usermodel.ClientAnchor], short), cast-from-Int-to-Int=([short], int), <init>/-717371935=([org.apache.poi.ss.util.CellAddress, int, int], void), findCellComment/1328025713=([org.apache.poi.xssf.model.CommentsTable, org.apache.poi.ss.util.CellAddress], org.apache.poi.xssf.usermodel.XSSFComment), var1513-init=([], org.apache.poi.xssf.usermodel.XSSFComment), newComment/-261625762=([org.apache.poi.xssf.model.CommentsTable, org.apache.poi.ss.util.CellAddress], org.openxmlformats.schemas.spreadsheetml.x2006.main.CTComment), <init>/-294766646=([org.apache.poi.xssf.usermodel.XSSFComment, org.apache.poi.xssf.model.CommentsTable, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTComment, com.microsoft.schemas.vml.CTShape], void)}
; {var2731=org.apache.poi.xssf.model.CommentsTable, var2953=r0, var1778=org.apache.poi.ss.usermodel.ClientAnchor, var2540=r4, var1376=org.apache.poi.ss.usermodel.Sheet, var2751=$r1, var2362=org.apache.poi.xssf.usermodel.XSSFVMLDrawing, var1123=r2, var65=com.microsoft.schemas.vml.CTShape, var6=$r31, var3466=r3, var3714=org.apache.poi.ss.util.CellAddress, var1394=$r35, var1499=$i12, var456=$s13, var1305=$i16, var1513=org.apache.poi.xssf.usermodel.XSSFComment, var3815=$r33, var2758=$r38, var3706=org.openxmlformats.schemas.spreadsheetml.x2006.main.CTComment, var1735=$r6}
; {org.apache.poi.xssf.model.CommentsTable=var2731, r0=var2953, org.apache.poi.ss.usermodel.ClientAnchor=var1778, r4=var2540, org.apache.poi.ss.usermodel.Sheet=var1376, $r1=var2751, org.apache.poi.xssf.usermodel.XSSFVMLDrawing=var2362, r2=var1123, com.microsoft.schemas.vml.CTShape=var65, $r31=var6, r3=var3466, org.apache.poi.ss.util.CellAddress=var3714, $r35=var1394, $i12=var1499, $s13=var456, $i16=var1305, org.apache.poi.xssf.usermodel.XSSFComment=var1513, $r33=var3815, $r38=var2758, org.openxmlformats.schemas.spreadsheetml.x2006.main.CTComment=var3706, $r6=var1735}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.poi.xssf.model.CommentsTable;	r4 := @parameter0: org.apache.poi.ss.usermodel.ClientAnchor;	$r1 = r0.<org.apache.poi.xssf.model.CommentsTable: org.apache.poi.ss.usermodel.Sheet sheet>;	r2 = specialinvoke r0.<org.apache.poi.xssf.model.CommentsTable: org.apache.poi.xssf.usermodel.XSSFVMLDrawing getVMLDrawing(org.apache.poi.ss.usermodel.Sheet,boolean)>($r1, 1);	if r2 != null goto $r31 = virtualinvoke r2.<org.apache.poi.xssf.usermodel.XSSFVMLDrawing: com.microsoft.schemas.vml.CTShape newCommentShape()>();	$r31 = virtualinvoke r2.<org.apache.poi.xssf.usermodel.XSSFVMLDrawing: com.microsoft.schemas.vml.CTShape newCommentShape()>();	r3 = $r31;	if $r31 == null goto $r35 = new org.apache.poi.ss.util.CellAddress;	$r35 = new org.apache.poi.ss.util.CellAddress;	$i12 = interfaceinvoke r4.<org.apache.poi.ss.usermodel.ClientAnchor: int getRow1()>();	$s13 = interfaceinvoke r4.<org.apache.poi.ss.usermodel.ClientAnchor: short getCol1()>();	$i16 = (int) $s13;	specialinvoke $r35.<org.apache.poi.ss.util.CellAddress: void <init>(int,int)>($i12, $i16);	$r33 = virtualinvoke r0.<org.apache.poi.xssf.model.CommentsTable: org.apache.poi.xssf.usermodel.XSSFComment findCellComment(org.apache.poi.ss.util.CellAddress)>($r35);	if $r33 == null goto $r38 = new org.apache.poi.xssf.usermodel.XSSFComment;	$r38 = new org.apache.poi.xssf.usermodel.XSSFComment;	$r6 = virtualinvoke r0.<org.apache.poi.xssf.model.CommentsTable: org.openxmlformats.schemas.spreadsheetml.x2006.main.CTComment newComment(org.apache.poi.ss.util.CellAddress)>($r35);	specialinvoke $r38.<org.apache.poi.xssf.usermodel.XSSFComment: void <init>(org.apache.poi.xssf.model.CommentsTable,org.openxmlformats.schemas.spreadsheetml.x2006.main.CTComment,com.microsoft.schemas.vml.CTShape)>(r0, $r6, r3);	return $r38
;block_num 5