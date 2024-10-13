(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3700 0)
(declare-sort var3579 0)
(declare-sort var3833 0)
(declare-sort var2091 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getBeginRun/502943799 (var3579) Int)
(declare-fun getBeginText/-260172693 (var3579) Int)
(declare-fun getBeginChar/1896720802 (var3579) Int)
(declare-fun getEndRun/-1796664855 (var3579) Int)
(declare-fun getEndText/1466403065 (var3579) Int)
(declare-fun getEndChar/-671670736 (var3579) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun paragraph/1384511242 (var3700) var3833)
(declare-fun var3833_getRArray/2035385376 (var3833) (Array Int var2091))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3700 var3700)
(declare-const null-var3579 var3579)
(declare-const var3428 var3700) ; Statement: r2 := @this: org.apache.poi.xwpf.usermodel.XWPFParagraph 
(assert (not (= var3428 null-var3700)))
(declare-const var1438 var3579) ; Statement: r0 := @parameter0: org.apache.poi.xwpf.usermodel.TextSegment 
(assert (not (= var1438 null-var3579)))
(assert true)
(define-const var712 Int (getBeginRun/502943799 var1438)) ; Statement: i0 = virtualinvoke r0.<org.apache.poi.xwpf.usermodel.TextSegment: int getBeginRun()>() 
(assert true)
(define-const var2821 Int (getBeginText/-260172693 var1438)) ; Statement: i1 = virtualinvoke r0.<org.apache.poi.xwpf.usermodel.TextSegment: int getBeginText()>() 
(assert true)
(define-const var112 Int (getBeginChar/1896720802 var1438)) ; Statement: i2 = virtualinvoke r0.<org.apache.poi.xwpf.usermodel.TextSegment: int getBeginChar()>() 
(assert true)
(define-const var447 Int (getEndRun/-1796664855 var1438)) ; Statement: i3 = virtualinvoke r0.<org.apache.poi.xwpf.usermodel.TextSegment: int getEndRun()>() 
(assert true)
(define-const var582 Int (getEndText/1466403065 var1438)) ; Statement: i4 = virtualinvoke r0.<org.apache.poi.xwpf.usermodel.TextSegment: int getEndText()>() 
(assert true)
(define-const var2490 Int (getEndChar/-671670736 var1438)) ; Statement: i5 = virtualinvoke r0.<org.apache.poi.xwpf.usermodel.TextSegment: int getEndChar()>() 
(define-const var2662 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2662)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2662!1 String)
(assert (= var2662!1 ""))
(define-const var2637 var3833 (paragraph/1384511242 var3428)) ; Statement: $r3 = r2.<org.apache.poi.xwpf.usermodel.XWPFParagraph: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP paragraph> 
(define-const var1632 (Array Int var2091) (var3833_getRArray/2035385376 var2637)) ; Statement: r4 = interfaceinvoke $r3.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR[] getRArray()>() 
(define-const var857 Int var712) ; Statement: i8 = i0 
(assert true) ; Non Conditional
 ; Statement: if i8 > i3 goto $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (> var857 var447)) ; Cond: i8 > i3 
(assert true)
(define-const var2336 String (toString/-2075883882 var2662!1)) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {getBeginRun/502943799=([org.apache.poi.xwpf.usermodel.TextSegment], int), getBeginText/-260172693=([org.apache.poi.xwpf.usermodel.TextSegment], int), getBeginChar/1896720802=([org.apache.poi.xwpf.usermodel.TextSegment], int), getEndRun/-1796664855=([org.apache.poi.xwpf.usermodel.TextSegment], int), getEndText/1466403065=([org.apache.poi.xwpf.usermodel.TextSegment], int), getEndChar/-671670736=([org.apache.poi.xwpf.usermodel.TextSegment], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), paragraph/1384511242=([org.apache.poi.xwpf.usermodel.XWPFParagraph], org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP), var3833_getRArray/2035385376=([org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP], org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR[]), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3700=org.apache.poi.xwpf.usermodel.XWPFParagraph, var3428=r2, var3579=org.apache.poi.xwpf.usermodel.TextSegment, var1438=r0, var712=i0, var2821=i1, var112=i2, var447=i3, var582=i4, var2490=i5, var2662=$r1, var3833=org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP, var2637=$r3, var2091=org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR, var1632=r4, var857=i8, var2336=$r5}
; {org.apache.poi.xwpf.usermodel.XWPFParagraph=var3700, r2=var3428, org.apache.poi.xwpf.usermodel.TextSegment=var3579, r0=var1438, i0=var712, i1=var2821, i2=var112, i3=var447, i4=var582, i5=var2490, $r1=var2662, org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP=var3833, $r3=var2637, org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR=var2091, r4=var1632, i8=var857, $r5=var2336}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.apache.poi.xwpf.usermodel.XWPFParagraph;	r0 := @parameter0: org.apache.poi.xwpf.usermodel.TextSegment;	i0 = virtualinvoke r0.<org.apache.poi.xwpf.usermodel.TextSegment: int getBeginRun()>();	i1 = virtualinvoke r0.<org.apache.poi.xwpf.usermodel.TextSegment: int getBeginText()>();	i2 = virtualinvoke r0.<org.apache.poi.xwpf.usermodel.TextSegment: int getBeginChar()>();	i3 = virtualinvoke r0.<org.apache.poi.xwpf.usermodel.TextSegment: int getEndRun()>();	i4 = virtualinvoke r0.<org.apache.poi.xwpf.usermodel.TextSegment: int getEndText()>();	i5 = virtualinvoke r0.<org.apache.poi.xwpf.usermodel.TextSegment: int getEndChar()>();	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = r2.<org.apache.poi.xwpf.usermodel.XWPFParagraph: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP paragraph>;	r4 = interfaceinvoke $r3.<org.openxmlformats.schemas.wordprocessingml.x2006.main.CTP: org.openxmlformats.schemas.wordprocessingml.x2006.main.CTR[] getRArray()>();	i8 = i0;	if i8 > i3 goto $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3