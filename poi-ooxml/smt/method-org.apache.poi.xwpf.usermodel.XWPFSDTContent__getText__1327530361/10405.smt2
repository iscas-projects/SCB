(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3811 0)
(declare-sort var987 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun bodyElements/-1116907366 (var3811) var987)
(declare-fun var987_size/-959786421 (var987) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3811 var3811)
(declare-const var732 var3811) ; Statement: r1 := @this: org.apache.poi.xwpf.usermodel.XWPFSDTContent 
(assert (not (= var732 null-var3811)))
(define-const var3498 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3498)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3498!1 String)
(assert (= var3498!1 ""))
(define-const var2626 Bool (ite (= 1 0) true false)) ; Statement: z4 = 0 
(define-const var865 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(define-const var2293 var987 (bodyElements/-1116907366 var732)) ; Statement: $r2 = r1.<org.apache.poi.xwpf.usermodel.XWPFSDTContent: java.util.List bodyElements> 
(define-const var1238 Int (var987_size/-959786421 var2293)) ; Statement: $i0 = interfaceinvoke $r2.<java.util.List: int size()>() 
 ; Statement: if i3 >= $i0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var865 var1238)) ; Cond: i3 >= $i0 
(assert true)
(define-const var1319 String (toString/-2075883882 var3498!1)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), bodyElements/-1116907366=([org.apache.poi.xwpf.usermodel.XWPFSDTContent], java.util.List), var987_size/-959786421=([java.util.List], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3811=org.apache.poi.xwpf.usermodel.XWPFSDTContent, var732=r1, var3498=$r0, var2626=z4, var865=i3, var987=java.util.List, var2293=$r2, var1238=$i0, var1319=$r3}
; {org.apache.poi.xwpf.usermodel.XWPFSDTContent=var3811, r1=var732, $r0=var3498, z4=var2626, i3=var865, java.util.List=var987, $r2=var2293, $i0=var1238, $r3=var1319}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.poi.xwpf.usermodel.XWPFSDTContent;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	z4 = 0;	i3 = 0;	$r2 = r1.<org.apache.poi.xwpf.usermodel.XWPFSDTContent: java.util.List bodyElements>;	$i0 = interfaceinvoke $r2.<java.util.List: int size()>();	if i3 >= $i0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3