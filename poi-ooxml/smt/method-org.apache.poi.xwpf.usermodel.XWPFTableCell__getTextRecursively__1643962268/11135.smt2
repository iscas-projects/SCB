(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2420 0)
(declare-sort var3913 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun bodyElements/1741148140 (var2420) var3913)
(declare-fun var3913_size/-959786421 (var3913) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2420 var2420)
(declare-const var1361 var2420) ; Statement: r1 := @this: org.apache.poi.xwpf.usermodel.XWPFTableCell 
(assert (not (= var1361 null-var2420)))
(define-const var498 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var498 64)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(64) 

(declare-const var498!1 String)
(declare-const var1343 Int)
(define-const var3646 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(define-const var763 var3913 (bodyElements/1741148140 var1361)) ; Statement: $r2 = r1.<org.apache.poi.xwpf.usermodel.XWPFTableCell: java.util.List bodyElements> 
(define-const var2551 Int (var3913_size/-959786421 var763)) ; Statement: $i0 = interfaceinvoke $r2.<java.util.List: int size()>() 
 ; Statement: if i3 >= $i0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var3646 var2551)) ; Cond: i3 >= $i0 
(assert true)
(define-const var2752 String (toString/-2075883882 var498!1)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), bodyElements/1741148140=([org.apache.poi.xwpf.usermodel.XWPFTableCell], java.util.List), var3913_size/-959786421=([java.util.List], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2420=org.apache.poi.xwpf.usermodel.XWPFTableCell, var1361=r1, var498=$r0, var1343=64, var3646=i3, var3913=java.util.List, var763=$r2, var2551=$i0, var2752=$r3}
; {org.apache.poi.xwpf.usermodel.XWPFTableCell=var2420, r1=var1361, $r0=var498, 64=var1343, i3=var3646, java.util.List=var3913, $r2=var763, $i0=var2551, $r3=var2752}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.poi.xwpf.usermodel.XWPFTableCell;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(64);	i3 = 0;	$r2 = r1.<org.apache.poi.xwpf.usermodel.XWPFTableCell: java.util.List bodyElements>;	$i0 = interfaceinvoke $r2.<java.util.List: int size()>();	if i3 >= $i0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3