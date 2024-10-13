(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3712 0)
(declare-sort var477 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun paragraphs/-272940180 (var3712) var477)
(declare-fun var477_iterator/-912451715 (var477) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun tables/-272940180 (var3712) var477)
(declare-fun getBodyElements/1333213378 (var3712) var477)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3712 var3712)
(declare-const var2324 var3712) ; Statement: r1 := @this: org.apache.poi.xwpf.usermodel.XWPFHeaderFooter 
(assert (not (= var2324 null-var3712)))
(define-const var1428 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var1428 64)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(64) 

(declare-const var1428!1 String)
(declare-const var667 Int)
(define-const var2350 var477 (paragraphs/-272940180 var2324)) ; Statement: $r2 = r1.<org.apache.poi.xwpf.usermodel.XWPFHeaderFooter: java.util.List paragraphs> 
(define-const var1823 Iterator (var477_iterator/-912451715 var2350)) ; Statement: r13 = interfaceinvoke $r2.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1659 Bool (Iterator_hasNext/-1669924200 var1823)) ; Statement: $z0 = interfaceinvoke r13.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r3 = r1.<org.apache.poi.xwpf.usermodel.XWPFHeaderFooter: java.util.List tables> 
(assert (= (ite var1659 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2542 var477 (tables/-272940180 var2324)) ; Statement: $r3 = r1.<org.apache.poi.xwpf.usermodel.XWPFHeaderFooter: java.util.List tables> 
(define-const var3881 Iterator (var477_iterator/-912451715 var2542)) ; Statement: r16 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var24 Bool (Iterator_hasNext/-1669924200 var3881)) ; Statement: $z1 = interfaceinvoke r16.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 == 0 goto $r4 = virtualinvoke r1.<org.apache.poi.xwpf.usermodel.XWPFHeaderFooter: java.util.List getBodyElements()>() 
(assert (= (ite var24 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var2649 var477 (getBodyElements/1333213378 var2324)) ; Statement: $r4 = virtualinvoke r1.<org.apache.poi.xwpf.usermodel.XWPFHeaderFooter: java.util.List getBodyElements()>() 
(define-const var2650 Iterator (var477_iterator/-912451715 var2649)) ; Statement: r19 = interfaceinvoke $r4.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1452 Bool (Iterator_hasNext/-1669924200 var2650)) ; Statement: $z2 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z2 == 0 goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var1452 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
(define-const var3177 String (toString/-2075883882 var1428!1)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), paragraphs/-272940180=([org.apache.poi.xwpf.usermodel.XWPFHeaderFooter], java.util.List), var477_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), tables/-272940180=([org.apache.poi.xwpf.usermodel.XWPFHeaderFooter], java.util.List), getBodyElements/1333213378=([org.apache.poi.xwpf.usermodel.XWPFHeaderFooter], java.util.List), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3712=org.apache.poi.xwpf.usermodel.XWPFHeaderFooter, var2324=r1, var1428=$r0, var667=64, var477=java.util.List, var2350=$r2, var1823=r13, var1659=$z0, var2542=$r3, var3881=r16, var24=$z1, var2649=$r4, var2650=r19, var1452=$z2, var3177=$r5}
; {org.apache.poi.xwpf.usermodel.XWPFHeaderFooter=var3712, r1=var2324, $r0=var1428, 64=var667, java.util.List=var477, $r2=var2350, r13=var1823, $z0=var1659, $r3=var2542, r16=var3881, $z1=var24, $r4=var2649, r19=var2650, $z2=var1452, $r5=var3177}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.poi.xwpf.usermodel.XWPFHeaderFooter;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(64);	$r2 = r1.<org.apache.poi.xwpf.usermodel.XWPFHeaderFooter: java.util.List paragraphs>;	r13 = interfaceinvoke $r2.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r13.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r3 = r1.<org.apache.poi.xwpf.usermodel.XWPFHeaderFooter: java.util.List tables>;	$r3 = r1.<org.apache.poi.xwpf.usermodel.XWPFHeaderFooter: java.util.List tables>;	r16 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>();	$z1 = interfaceinvoke r16.<java.util.Iterator: boolean hasNext()>();	if $z1 == 0 goto $r4 = virtualinvoke r1.<org.apache.poi.xwpf.usermodel.XWPFHeaderFooter: java.util.List getBodyElements()>();	$r4 = virtualinvoke r1.<org.apache.poi.xwpf.usermodel.XWPFHeaderFooter: java.util.List getBodyElements()>();	r19 = interfaceinvoke $r4.<java.util.List: java.util.Iterator iterator()>();	$z2 = interfaceinvoke r19.<java.util.Iterator: boolean hasNext()>();	if $z2 == 0 goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 7