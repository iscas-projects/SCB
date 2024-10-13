(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2802 0)
(declare-sort var2244 0)
(declare-sort var2898 0)
(declare-sort var3642 0)
(declare-sort var1766 0)
(declare-sort var3115 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3642) void)
(declare-fun cast-from-var2802-to-var3642 (var2802) var3642)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun footnoteText/1384511242 (var2802) String)
(declare-fun paragraph/1384511242 (var2802) var2244)
(declare-fun part/1384511242 (var2802) var2898)
(declare-fun var2898_getXWPFDocument/1552087570 (var2898) var1766)
(declare-fun document/1384511242 (var2802) var1766)
(declare-fun var3115-init () var3115)
(declare-fun <init>/-1576126578 (var3115) void)
(declare-const null-var2802 var2802)
(declare-const null-var2244 var2244)
(declare-const null-var2898 var2898)
(declare-const null-var1766 var1766)
(declare-const var3666 var2802) ; Statement: r0 := @this: org.apache.poi.xwpf.usermodel.XWPFParagraph 
(assert (not (= var3666 null-var2802)))
(declare-const var410 var2244) ; Statement: r2 := @parameter0: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP 
(assert (not (= var410 null-var2244)))
(declare-const var1901 var2898) ; Statement: r3 := @parameter1: org.apache.poi.xwpf.usermodel.IBody 
(assert (not (= var1901 null-var2898)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var2802-to-var3642 var3666))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var3666!1 var2802)
(define-const var1534 String String-init) ; Statement: $r43 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var1534 64)) ; Statement: specialinvoke $r43.<java.lang.StringBuilder: void <init>(int)>(64) 

(declare-const var1534!1 String)
(declare-const var3405 Int)
(declare-const var3666!2 var2802)
(assert (not (= var3666!2 null-var2802)))
(assert (= (footnoteText/1384511242 var3666!2) var1534!1)) ; Statement: r0.<org.apache.poi.xwpf.usermodel.XWPFParagraph: java.lang.StringBuilder footnoteText> = $r43 
(declare-const var3666!3 var2802)
(assert (not (= var3666!3 null-var2802)))
(assert (= (paragraph/1384511242 var3666!3) var410)) ; Statement: r0.<org.apache.poi.xwpf.usermodel.XWPFParagraph: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP paragraph> = r2 
(declare-const var3666!4 var2802)
(assert (not (= var3666!4 null-var2802)))
(assert (= (part/1384511242 var3666!4) var1901)) ; Statement: r0.<org.apache.poi.xwpf.usermodel.XWPFParagraph: org.apache.poi.xwpf.usermodel.IBody part> = r3 
(define-const var2673 var1766 (var2898_getXWPFDocument/1552087570 var1901)) ; Statement: $r4 = interfaceinvoke r3.<org.apache.poi.xwpf.usermodel.IBody: org.apache.poi.xwpf.usermodel.XWPFDocument getXWPFDocument()>() 
(declare-const var3666!5 var2802)
(assert (not (= var3666!5 null-var2802)))
(assert (= (document/1384511242 var3666!5) var2673)) ; Statement: r0.<org.apache.poi.xwpf.usermodel.XWPFParagraph: org.apache.poi.xwpf.usermodel.XWPFDocument document> = $r4 
(define-const var2118 var1766 (document/1384511242 var3666!5)) ; Statement: $r5 = r0.<org.apache.poi.xwpf.usermodel.XWPFParagraph: org.apache.poi.xwpf.usermodel.XWPFDocument document> 
 ; Statement: if $r5 != null goto $r45 = new java.util.ArrayList 
(assert (not (not (= var2118 null-var1766)))) ; Negate: Cond: $r5 != null  
(define-const var799 var3115 var3115-init) ; Statement: $r44 = new java.lang.NullPointerException 
(assert true)
;(assert (<init>/-1576126578 var799)) ; Statement: specialinvoke $r44.<java.lang.NullPointerException: void <init>()>() 

(declare-const var799!1 var3115)
 ; Statement: throw $r44 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var2802-to-var3642=([org.apache.poi.xwpf.usermodel.XWPFParagraph], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), footnoteText/1384511242=([org.apache.poi.xwpf.usermodel.XWPFParagraph], java.lang.StringBuilder), paragraph/1384511242=([org.apache.poi.xwpf.usermodel.XWPFParagraph], org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP), part/1384511242=([org.apache.poi.xwpf.usermodel.XWPFParagraph], org.apache.poi.xwpf.usermodel.IBody), var2898_getXWPFDocument/1552087570=([org.apache.poi.xwpf.usermodel.IBody], org.apache.poi.xwpf.usermodel.XWPFDocument), document/1384511242=([org.apache.poi.xwpf.usermodel.XWPFParagraph], org.apache.poi.xwpf.usermodel.XWPFDocument), var3115-init=([], java.lang.NullPointerException), <init>/-1576126578=([java.lang.NullPointerException], void)}
; {var2802=org.apache.poi.xwpf.usermodel.XWPFParagraph, var3666=r0, var2244=org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP, var410=r2, var2898=org.apache.poi.xwpf.usermodel.IBody, var1901=r3, var3642=java.lang.Object, var1534=$r43, var3405=64, var1766=org.apache.poi.xwpf.usermodel.XWPFDocument, var2673=$r4, var2118=$r5, var3115=java.lang.NullPointerException, var799=$r44}
; {org.apache.poi.xwpf.usermodel.XWPFParagraph=var2802, r0=var3666, org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP=var2244, r2=var410, org.apache.poi.xwpf.usermodel.IBody=var2898, r3=var1901, java.lang.Object=var3642, $r43=var1534, 64=var3405, org.apache.poi.xwpf.usermodel.XWPFDocument=var1766, $r4=var2673, $r5=var2118, java.lang.NullPointerException=var3115, $r44=var799}
;seq <java.lang.StringBuilder: void <init>(int)>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1}
;stmts r0 := @this: org.apache.poi.xwpf.usermodel.XWPFParagraph;	r2 := @parameter0: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP;	r3 := @parameter1: org.apache.poi.xwpf.usermodel.IBody;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r43 = new java.lang.StringBuilder;	specialinvoke $r43.<java.lang.StringBuilder: void <init>(int)>(64);	r0.<org.apache.poi.xwpf.usermodel.XWPFParagraph: java.lang.StringBuilder footnoteText> = $r43;	r0.<org.apache.poi.xwpf.usermodel.XWPFParagraph: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP paragraph> = r2;	r0.<org.apache.poi.xwpf.usermodel.XWPFParagraph: org.apache.poi.xwpf.usermodel.IBody part> = r3;	$r4 = interfaceinvoke r3.<org.apache.poi.xwpf.usermodel.IBody: org.apache.poi.xwpf.usermodel.XWPFDocument getXWPFDocument()>();	r0.<org.apache.poi.xwpf.usermodel.XWPFParagraph: org.apache.poi.xwpf.usermodel.XWPFDocument document> = $r4;	$r5 = r0.<org.apache.poi.xwpf.usermodel.XWPFParagraph: org.apache.poi.xwpf.usermodel.XWPFDocument document>;	if $r5 != null goto $r45 = new java.util.ArrayList;	$r44 = new java.lang.NullPointerException;	specialinvoke $r44.<java.lang.NullPointerException: void <init>()>();	throw $r44
;block_num 2