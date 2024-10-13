(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3797 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun tag/-1130912878 (var3797) Int)
(declare-fun owner/-1130912878 (var3797) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun name/-1130912878 (var3797) String)
(declare-fun desc/-1130912878 (var3797) String)
(declare-const null-var3797 var3797)
(declare-const var3552 var3797) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.Handle 
(assert (not (= var3552 null-var3797)))
(define-const var2544 Int (tag/-1130912878 var3552)) ; Statement: $i0 = r0.<jdk.internal.org.objectweb.asm.Handle: int tag> 
(define-const var1718 String (owner/-1130912878 var3552)) ; Statement: $r1 = r0.<jdk.internal.org.objectweb.asm.Handle: java.lang.String owner> 
(assert true)
(define-const var176 Int (hashCode/-467973558 var1718)) ; Statement: $i2 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var133 String (name/-1130912878 var3552)) ; Statement: $r2 = r0.<jdk.internal.org.objectweb.asm.Handle: java.lang.String name> 
(assert true)
(define-const var2147 Int (hashCode/-467973558 var133)) ; Statement: $i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(define-const var2100 Int (* var176 var2147)) ; Statement: $i4 = $i2 * $i1 
(define-const var3142 String (desc/-1130912878 var3552)) ; Statement: $r3 = r0.<jdk.internal.org.objectweb.asm.Handle: java.lang.String desc> 
(assert true)
(define-const var73 Int (hashCode/-467973558 var3142)) ; Statement: $i3 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var1438 Int (* var2100 var73)) ; Statement: $i5 = $i4 * $i3 
(define-const var2746 Int (+ var2544 var1438)) ; Statement: $i6 = $i0 + $i5 
 ; Statement: return $i6 
(check-sat)
(get-model)
(get-unsat-core)
; {tag/-1130912878=([jdk.internal.org.objectweb.asm.Handle], int), owner/-1130912878=([jdk.internal.org.objectweb.asm.Handle], java.lang.String), hashCode/-467973558=([java.lang.String], int), name/-1130912878=([jdk.internal.org.objectweb.asm.Handle], java.lang.String), desc/-1130912878=([jdk.internal.org.objectweb.asm.Handle], java.lang.String)}
; {var3797=jdk.internal.org.objectweb.asm.Handle, var3552=r0, var2544=$i0, var1718=$r1, var176=$i2, var133=$r2, var2147=$i1, var2100=$i4, var3142=$r3, var73=$i3, var1438=$i5, var2746=$i6}
; {jdk.internal.org.objectweb.asm.Handle=var3797, r0=var3552, $i0=var2544, $r1=var1718, $i2=var176, $r2=var133, $i1=var2147, $i4=var2100, $r3=var3142, $i3=var73, $i5=var1438, $i6=var2746}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 3}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.Handle;	$i0 = r0.<jdk.internal.org.objectweb.asm.Handle: int tag>;	$r1 = r0.<jdk.internal.org.objectweb.asm.Handle: java.lang.String owner>;	$i2 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	$r2 = r0.<jdk.internal.org.objectweb.asm.Handle: java.lang.String name>;	$i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i4 = $i2 * $i1;	$r3 = r0.<jdk.internal.org.objectweb.asm.Handle: java.lang.String desc>;	$i3 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i5 = $i4 * $i3;	$i6 = $i0 + $i5;	return $i6
;block_num 1