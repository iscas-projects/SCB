(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1455 0)
(declare-sort var2862 0)
(declare-sort var1973 0)
(declare-sort var1957 0)
(declare-sort var2912 0)
(declare-sort var2157 0)
(declare-sort var2409 0)
(declare-sort var3601 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/26586072 (var1455) var2862)
(declare-fun <init>/-1270213085 (var1957) void)
(declare-fun cast-from-var1455-to-var1957 (var1455) var1957)
(declare-fun var2912-init () var2912)
(declare-fun <init>/-201242697 (var2912) void)
(declare-fun cast-from-var2912-to-var2157 (var2912) var2157)
(declare-fun rangeTable/26586072 (var1455) var2157)
(declare-fun previous/26586072 (var1455) var1455)
(declare-fun subroutine/26586072 (var1455) var1973)
(declare-fun var2409-init () var2409)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3601) String)
(declare-fun cast-from-var1973-to-var3601 (var1973) var3601)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var2409 String) void)
(declare-const null-var1455 var1455)
(declare-const null-var2862 var2862)
(declare-const null-var1973 var1973)
(declare-const var1364 var1455) ; Statement: r0 := @this: jdk.internal.org.objectweb.asm.commons.JSRInlinerAdapter$Instantiation 
(assert (not (= var1364 null-var1455)))
(declare-const var2291 var2862) ; Statement: r1 := @parameter0: jdk.internal.org.objectweb.asm.commons.JSRInlinerAdapter 
(assert (not (= var2291 null-var2862)))
(declare-const var243 var1455) ; Statement: r3 := @parameter1: jdk.internal.org.objectweb.asm.commons.JSRInlinerAdapter$Instantiation 
(assert (not (= var243 null-var1455)))
(declare-const var811 var1973) ; Statement: r4 := @parameter2: java.util.BitSet 
(assert (not (= var811 null-var1973)))
(declare-const var1364!1 var1455)
(assert (not (= var1364!1 null-var1455)))
(assert (= (this$0/26586072 var1364!1) var2291)) ; Statement: r0.<jdk.internal.org.objectweb.asm.commons.JSRInlinerAdapter$Instantiation: jdk.internal.org.objectweb.asm.commons.JSRInlinerAdapter this$0> = r1 
(assert true)
;(assert (<init>/-1270213085 (cast-from-var1455-to-var1957 var1364!1))) ; Statement: specialinvoke r0.<java.util.AbstractMap: void <init>()>() 

(declare-const var1364!2 var1455)
(define-const var1062 var2912 var2912-init) ; Statement: $r2 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var1062)) ; Statement: specialinvoke $r2.<java.util.HashMap: void <init>()>() 

(declare-const var1062!1 var2912)
(declare-const var1364!3 var1455)
(assert (not (= var1364!3 null-var1455)))
(assert (= (rangeTable/26586072 var1364!3) (cast-from-var2912-to-var2157 var1062!1))) ; Statement: r0.<jdk.internal.org.objectweb.asm.commons.JSRInlinerAdapter$Instantiation: java.util.Map rangeTable> = $r2 
(declare-const var1364!4 var1455)
(assert (not (= var1364!4 null-var1455)))
(assert (= (previous/26586072 var1364!4) var243)) ; Statement: r0.<jdk.internal.org.objectweb.asm.commons.JSRInlinerAdapter$Instantiation: jdk.internal.org.objectweb.asm.commons.JSRInlinerAdapter$Instantiation previous> = r3 
(declare-const var1364!5 var1455)
(assert (not (= var1364!5 null-var1455)))
(assert (= (subroutine/26586072 var1364!5) var811)) ; Statement: r0.<jdk.internal.org.objectweb.asm.commons.JSRInlinerAdapter$Instantiation: java.util.BitSet subroutine> = r4 
(define-const var2362 var1455 var243) ; Statement: r19 = r3 
(assert true) ; Non Conditional
 ; Statement: if r19 == null goto (branch) 
(assert (not (= var2362 null-var1455))) ; Negate: Cond: r19 == null  
(define-const var310 var1973 (subroutine/26586072 var2362)) ; Statement: $r13 = r19.<jdk.internal.org.objectweb.asm.commons.JSRInlinerAdapter$Instantiation: java.util.BitSet subroutine> 
 ; Statement: if $r13 != r4 goto r19 = r19.<jdk.internal.org.objectweb.asm.commons.JSRInlinerAdapter$Instantiation: jdk.internal.org.objectweb.asm.commons.JSRInlinerAdapter$Instantiation previous> 
(assert (not (not (= var310 var811)))) ; Negate: Cond: $r13 != r4  
(define-const var1971 var2409 var2409-init) ; Statement: $r14 = new java.lang.RuntimeException 
(define-const var1235 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1235)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1235!1 String)
(assert (= var1235!1 ""))
(assert true)
(define-const var3110 String (append/672562846 var1235!1 "Recursive invocation of ")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Recursive invocation of ") 
(declare-const var1235!2 String)
(assert (= var1235!2 (str.++ var1235!1 "Recursive invocation of ")))
(assert true)
(define-const var1262 String (append/-1031950772 var3110 (cast-from-var1973-to-var3601 var811))) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4) 
(declare-const var3110!1 String)
(assert (str.prefixof var3110 var3110!1))
(assert true)
(define-const var3494 String (toString/-2075883882 var1262)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var1971 var3494)) ; Statement: specialinvoke $r14.<java.lang.RuntimeException: void <init>(java.lang.String)>($r18) 

(declare-const var1971!1 var2409)
(declare-const var3494!1 String)
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/26586072=([jdk.internal.org.objectweb.asm.commons.JSRInlinerAdapter$Instantiation], jdk.internal.org.objectweb.asm.commons.JSRInlinerAdapter), <init>/-1270213085=([java.util.AbstractMap], void), cast-from-var1455-to-var1957=([jdk.internal.org.objectweb.asm.commons.JSRInlinerAdapter$Instantiation], java.util.AbstractMap), var2912-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), cast-from-var2912-to-var2157=([java.util.HashMap], java.util.Map), rangeTable/26586072=([jdk.internal.org.objectweb.asm.commons.JSRInlinerAdapter$Instantiation], java.util.Map), previous/26586072=([jdk.internal.org.objectweb.asm.commons.JSRInlinerAdapter$Instantiation], jdk.internal.org.objectweb.asm.commons.JSRInlinerAdapter$Instantiation), subroutine/26586072=([jdk.internal.org.objectweb.asm.commons.JSRInlinerAdapter$Instantiation], java.util.BitSet), var2409-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1973-to-var3601=([java.util.BitSet], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var1455=jdk.internal.org.objectweb.asm.commons.JSRInlinerAdapter$Instantiation, var1364=r0, var2862=jdk.internal.org.objectweb.asm.commons.JSRInlinerAdapter, var2291=r1, var243=r3, var1973=java.util.BitSet, var811=r4, var1957=java.util.AbstractMap, var2912=java.util.HashMap, var1062=$r2, var2157=java.util.Map, var2362=r19, var310=$r13, var2409=java.lang.RuntimeException, var1971=$r14, var1235=$r15, var3110=$r16, var3601=java.lang.Object, var1262=$r17, var3494=$r18}
; {jdk.internal.org.objectweb.asm.commons.JSRInlinerAdapter$Instantiation=var1455, r0=var1364, jdk.internal.org.objectweb.asm.commons.JSRInlinerAdapter=var2862, r1=var2291, r3=var243, java.util.BitSet=var1973, r4=var811, java.util.AbstractMap=var1957, java.util.HashMap=var2912, $r2=var1062, java.util.Map=var2157, r19=var2362, $r13=var310, java.lang.RuntimeException=var2409, $r14=var1971, $r15=var1235, $r16=var3110, java.lang.Object=var3601, $r17=var1262, $r18=var3494}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.org.objectweb.asm.commons.JSRInlinerAdapter$Instantiation;	r1 := @parameter0: jdk.internal.org.objectweb.asm.commons.JSRInlinerAdapter;	r3 := @parameter1: jdk.internal.org.objectweb.asm.commons.JSRInlinerAdapter$Instantiation;	r4 := @parameter2: java.util.BitSet;	r0.<jdk.internal.org.objectweb.asm.commons.JSRInlinerAdapter$Instantiation: jdk.internal.org.objectweb.asm.commons.JSRInlinerAdapter this$0> = r1;	specialinvoke r0.<java.util.AbstractMap: void <init>()>();	$r2 = new java.util.HashMap;	specialinvoke $r2.<java.util.HashMap: void <init>()>();	r0.<jdk.internal.org.objectweb.asm.commons.JSRInlinerAdapter$Instantiation: java.util.Map rangeTable> = $r2;	r0.<jdk.internal.org.objectweb.asm.commons.JSRInlinerAdapter$Instantiation: jdk.internal.org.objectweb.asm.commons.JSRInlinerAdapter$Instantiation previous> = r3;	r0.<jdk.internal.org.objectweb.asm.commons.JSRInlinerAdapter$Instantiation: java.util.BitSet subroutine> = r4;	r19 = r3;	if r19 == null goto (branch);	$r13 = r19.<jdk.internal.org.objectweb.asm.commons.JSRInlinerAdapter$Instantiation: java.util.BitSet subroutine>;	if $r13 != r4 goto r19 = r19.<jdk.internal.org.objectweb.asm.commons.JSRInlinerAdapter$Instantiation: jdk.internal.org.objectweb.asm.commons.JSRInlinerAdapter$Instantiation previous>;	$r14 = new java.lang.RuntimeException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Recursive invocation of ");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r4);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r14.<java.lang.RuntimeException: void <init>(java.lang.String)>($r18);	throw $r14
;block_num 4