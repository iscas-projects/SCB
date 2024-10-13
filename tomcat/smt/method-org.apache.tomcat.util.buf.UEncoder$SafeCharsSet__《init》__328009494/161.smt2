(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2926 0)
(declare-sort var2886 0)
(declare-sort var3073 0)
(declare-sort var0 0)
(declare-sort var1228 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/1180346878 (var3073 String Int) void)
(declare-fun cast-from-var2926-to-var3073 (var2926) var3073)
(declare-fun var1228_initialSafeChars/311846282 () var0)
(declare-fun safeChars/-988312452 (var2926) var0)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-const null-var2926 var2926)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3820 var2926) ; Statement: r0 := @this: org.apache.tomcat.util.buf.UEncoder$SafeCharsSet 
(assert (not (= var3820 null-var2926)))
(declare-const var74 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var74 null-String)))
(declare-const var3312 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3312 null-Int)))
(declare-const var2310 String) ; Statement: r3 := @parameter2: java.lang.String 
(assert (not (= var2310 null-String)))
(assert true)
;(assert (<init>/1180346878 (cast-from-var2926-to-var3073 var3820) var74 var3312)) ; Statement: specialinvoke r0.<java.lang.Enum: void <init>(java.lang.String,int)>(r1, i0) 

(declare-const var3820!1 var2926)
(declare-const var74!1 String)
(declare-const var3312!1 Int)
(define-const var3441 var0 var1228_initialSafeChars/311846282) ; Statement: $r2 = staticinvoke <org.apache.tomcat.util.buf.UEncoder: java.util.BitSet initialSafeChars()>() 
(declare-const var3820!2 var2926)
(assert (not (= var3820!2 null-var2926)))
(assert (= (safeChars/-988312452 var3820!2) var3441)) ; Statement: r0.<org.apache.tomcat.util.buf.UEncoder$SafeCharsSet: java.util.BitSet safeChars> = $r2 
(assert true)
(define-const var1479 (Array Int Int) (toCharArray/415275702 var2310)) ; Statement: r4 = virtualinvoke r3.<java.lang.String: char[] toCharArray()>() 
(define-const var108 Int (getLength-Arr-Int-1 var1479)) ; Statement: i1 = lengthof r4 
(define-const var1391 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
 ; Statement: if i3 >= i1 goto return 
(assert (>= var1391 var108)) ; Cond: i3 >= i1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/1180346878=([java.lang.Enum, java.lang.String, int], void), cast-from-var2926-to-var3073=([org.apache.tomcat.util.buf.UEncoder$SafeCharsSet], java.lang.Enum), var1228_initialSafeChars/311846282=([], java.util.BitSet), safeChars/-988312452=([org.apache.tomcat.util.buf.UEncoder$SafeCharsSet], java.util.BitSet), toCharArray/415275702=([java.lang.String], char[]), getLength-Arr-Int-1=([char[]], int)}
; {var2926=org.apache.tomcat.util.buf.UEncoder$SafeCharsSet, var3820=r0, var74=r1, var2886=null_type, var3312=i0, var2310=r3, var3073=java.lang.Enum, var0=java.util.BitSet, var1228=org.apache.tomcat.util.buf.UEncoder, var3441=$r2, var1479=r4, var108=i1, var1391=i3}
; {org.apache.tomcat.util.buf.UEncoder$SafeCharsSet=var2926, r0=var3820, r1=var74, null_type=var2886, i0=var3312, r3=var2310, java.lang.Enum=var3073, java.util.BitSet=var0, org.apache.tomcat.util.buf.UEncoder=var1228, $r2=var3441, r4=var1479, i1=var108, i3=var1391}
;seq <java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts r0 := @this: org.apache.tomcat.util.buf.UEncoder$SafeCharsSet;	r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	r3 := @parameter2: java.lang.String;	specialinvoke r0.<java.lang.Enum: void <init>(java.lang.String,int)>(r1, i0);	$r2 = staticinvoke <org.apache.tomcat.util.buf.UEncoder: java.util.BitSet initialSafeChars()>();	r0.<org.apache.tomcat.util.buf.UEncoder$SafeCharsSet: java.util.BitSet safeChars> = $r2;	r4 = virtualinvoke r3.<java.lang.String: char[] toCharArray()>();	i1 = lengthof r4;	i3 = 0;	if i3 >= i1 goto return;	return
;block_num 3