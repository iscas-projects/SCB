(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1554 0)
(declare-sort var2470 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun runs/1384511242 (var1554) var2470)
(declare-fun var2470_iterator/-912451715 (var2470) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1554 var1554)
(declare-const var1936 var1554) ; Statement: r1 := @this: org.apache.poi.xwpf.usermodel.XWPFParagraph 
(assert (not (= var1936 null-var1554)))
(define-const var1703 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var1703 64)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(64) 

(declare-const var1703!1 String)
(declare-const var3869 Int)
(define-const var22 var2470 (runs/1384511242 var1936)) ; Statement: $r2 = r1.<org.apache.poi.xwpf.usermodel.XWPFParagraph: java.util.List runs> 
(define-const var1944 Iterator (var2470_iterator/-912451715 var22)) ; Statement: r3 = interfaceinvoke $r2.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1454 Bool (Iterator_hasNext/-1669924200 var1944)) ; Statement: $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var1454 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2265 String (toString/-2075883882 var1703!1)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), runs/1384511242=([org.apache.poi.xwpf.usermodel.XWPFParagraph], java.util.List), var2470_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1554=org.apache.poi.xwpf.usermodel.XWPFParagraph, var1936=r1, var1703=$r0, var3869=64, var2470=java.util.List, var22=$r2, var1944=r3, var1454=$z0, var2265=$r4}
; {org.apache.poi.xwpf.usermodel.XWPFParagraph=var1554, r1=var1936, $r0=var1703, 64=var3869, java.util.List=var2470, $r2=var22, r3=var1944, $z0=var1454, $r4=var2265}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.poi.xwpf.usermodel.XWPFParagraph;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(64);	$r2 = r1.<org.apache.poi.xwpf.usermodel.XWPFParagraph: java.util.List runs>;	r3 = interfaceinvoke $r2.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3