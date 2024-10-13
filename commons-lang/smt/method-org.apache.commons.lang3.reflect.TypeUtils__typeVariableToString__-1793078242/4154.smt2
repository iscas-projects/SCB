(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2572 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun var2572_getName/-1279641638 (var2572) String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun var2572_getBounds/931539860 (var2572) (Array Int ClassObject))
(declare-fun getLength-Arr-ClassObject-1 ((Array Int ClassObject)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2572 var2572)
(declare-const var848 var2572) ; Statement: r1 := @parameter0: java.lang.reflect.TypeVariable 
(assert (not (= var848 null-var2572)))
(define-const var3082 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(define-const var1753 String (var2572_getName/-1279641638 var848)) ; Statement: $r2 = interfaceinvoke r1.<java.lang.reflect.TypeVariable: java.lang.String getName()>() 
(assert true)
;(assert (<init>/-1061048412 var3082 var1753)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r2) 
(declare-const var3082!1 String)
(assert (= var3082!1 var1753))
(define-const var1665 (Array Int ClassObject) (var2572_getBounds/931539860 var848)) ; Statement: r3 = interfaceinvoke r1.<java.lang.reflect.TypeVariable: java.lang.reflect.Type[] getBounds()>() 
(define-const var1887 Int (getLength-Arr-ClassObject-1 var1665)) ; Statement: $i0 = lengthof r3 
 ; Statement: if $i0 <= 0 goto $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (<= var1887 0)) ; Cond: $i0 <= 0 
(assert true)
(define-const var2001 String (toString/-2075883882 var3082!1)) ; Statement: $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), var2572_getName/-1279641638=([java.lang.reflect.TypeVariable], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), var2572_getBounds/931539860=([java.lang.reflect.TypeVariable], java.lang.reflect.Type[]), getLength-Arr-ClassObject-1=([java.lang.reflect.Type[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2572=java.lang.reflect.TypeVariable, var848=r1, var3082=$r0, var1753=$r2, var1665=r3, var1887=$i0, var2001=$r7}
; {java.lang.reflect.TypeVariable=var2572, r1=var848, $r0=var3082, $r2=var1753, r3=var1665, $i0=var1887, $r7=var2001}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.reflect.TypeVariable;	$r0 = new java.lang.StringBuilder;	$r2 = interfaceinvoke r1.<java.lang.reflect.TypeVariable: java.lang.String getName()>();	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r2);	r3 = interfaceinvoke r1.<java.lang.reflect.TypeVariable: java.lang.reflect.Type[] getBounds()>();	$i0 = lengthof r3;	if $i0 <= 0 goto $r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 2