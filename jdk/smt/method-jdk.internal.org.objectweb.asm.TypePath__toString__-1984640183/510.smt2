(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2644 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength/1582624805 (var2644) Int)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2644 var2644)
(declare-const var52 var2644) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.TypePath 
(assert (not (= var52 null-var2644)))
(assert true)
(define-const var2240 Int (getLength/1582624805 var52)) ; Statement: i0 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.TypePath: int getLength()>() 
(define-const var2248 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(define-const var2825 Int (* var2240 2)) ; Statement: $i1 = i0 * 2 
(assert true)
;(assert (<init>/543593434 var2248 var2825)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var2248!1 String)
(declare-const var2825!1 Int)
(define-const var785 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i0 goto $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var785 var2240)) ; Cond: i4 >= i0 
(assert true)
(define-const var855 String (toString/-2075883882 var2248!1)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength/1582624805=([jdk.internal.org.objectweb.asm.TypePath], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2644=jdk.internal.org.objectweb.asm.TypePath, var52=r0, var2240=i0, var2248=$r1, var2825=$i1, var785=i4, var855=$r2}
; {jdk.internal.org.objectweb.asm.TypePath=var2644, r0=var52, i0=var2240, $r1=var2248, $i1=var2825, i4=var785, $r2=var855}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.TypePath;	i0 = virtualinvoke r0.<jdk.internal.org.objectweb.asm.TypePath: int getLength()>();	$r1 = new java.lang.StringBuilder;	$i1 = i0 * 2;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>($i1);	i4 = 0;	if i4 >= i0 goto $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3