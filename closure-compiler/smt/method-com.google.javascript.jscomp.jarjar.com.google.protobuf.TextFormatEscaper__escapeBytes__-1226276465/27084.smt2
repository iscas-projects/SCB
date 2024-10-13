(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3947 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun var3947_size/-1365761763 (var3947) Int)
(declare-fun <init>/543593434 (String Int) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3947 var3947)
(declare-const var1165 var3947) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormatEscaper$ByteSequence 
(assert (not (= var1165 null-var3947)))
(define-const var1775 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(define-const var3351 Int (var3947_size/-1365761763 var1165)) ; Statement: $i0 = interfaceinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormatEscaper$ByteSequence: int size()>() 
(assert true)
;(assert (<init>/543593434 var1775 var3351)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>(int)>($i0) 

(declare-const var1775!1 String)
(declare-const var3351!1 Int)
(define-const var1149 Int 0) ; Statement: i15 = 0 
(assert true) ; Non Conditional
(define-const var1077 Int (var3947_size/-1365761763 var1165)) ; Statement: $i1 = interfaceinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormatEscaper$ByteSequence: int size()>() 
 ; Statement: if i15 >= $i1 goto $r2 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var1149 var1077)) ; Cond: i15 >= $i1 
(assert true)
(define-const var2032 String (toString/-2075883882 var1775!1)) ; Statement: $r2 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), var3947_size/-1365761763=([com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormatEscaper$ByteSequence], int), <init>/543593434=([java.lang.StringBuilder, int], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3947=com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormatEscaper$ByteSequence, var1165=r1, var1775=$r3, var3351=$i0, var1149=i15, var1077=$i1, var2032=$r2}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormatEscaper$ByteSequence=var3947, r1=var1165, $r3=var1775, $i0=var3351, i15=var1149, $i1=var1077, $r2=var2032}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormatEscaper$ByteSequence;	$r3 = new java.lang.StringBuilder;	$i0 = interfaceinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormatEscaper$ByteSequence: int size()>();	specialinvoke $r3.<java.lang.StringBuilder: void <init>(int)>($i0);	i15 = 0;	$i1 = interfaceinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.TextFormatEscaper$ByteSequence: int size()>();	if i15 >= $i1 goto $r2 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3