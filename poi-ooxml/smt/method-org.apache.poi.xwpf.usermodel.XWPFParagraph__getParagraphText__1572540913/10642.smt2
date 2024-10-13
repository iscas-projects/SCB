(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3500 0)
(declare-sort var3110 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun runs/1384511242 (var3500) var3110)
(declare-fun var3110_iterator/-912451715 (var3110) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3500 var3500)
(declare-const var2028 var3500) ; Statement: r1 := @this: org.apache.poi.xwpf.usermodel.XWPFParagraph 
(assert (not (= var2028 null-var3500)))
(define-const var1297 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var1297 64)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(64) 

(declare-const var1297!1 String)
(declare-const var3182 Int)
(define-const var1581 var3110 (runs/1384511242 var2028)) ; Statement: $r2 = r1.<org.apache.poi.xwpf.usermodel.XWPFParagraph: java.util.List runs> 
(define-const var1935 Iterator (var3110_iterator/-912451715 var1581)) ; Statement: r3 = interfaceinvoke $r2.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var36 Bool (Iterator_hasNext/-1669924200 var1935)) ; Statement: $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var36 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3096 String (toString/-2075883882 var1297!1)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), runs/1384511242=([org.apache.poi.xwpf.usermodel.XWPFParagraph], java.util.List), var3110_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3500=org.apache.poi.xwpf.usermodel.XWPFParagraph, var2028=r1, var1297=$r0, var3182=64, var3110=java.util.List, var1581=$r2, var1935=r3, var36=$z0, var3096=$r4}
; {org.apache.poi.xwpf.usermodel.XWPFParagraph=var3500, r1=var2028, $r0=var1297, 64=var3182, java.util.List=var3110, $r2=var1581, r3=var1935, $z0=var36, $r4=var3096}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.poi.xwpf.usermodel.XWPFParagraph;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(64);	$r2 = r1.<org.apache.poi.xwpf.usermodel.XWPFParagraph: java.util.List runs>;	r3 = interfaceinvoke $r2.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3