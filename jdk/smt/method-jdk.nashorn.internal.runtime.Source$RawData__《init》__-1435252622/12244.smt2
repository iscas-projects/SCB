(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var318 0)
(declare-sort var788 0)
(declare-sort var1396 0)
(declare-sort var1756 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1396) void)
(declare-fun cast-from-var318-to-var1396 (var318) var1396)
(declare-fun var1756_requireNonNull/-961817614 (var1396) var1396)
(declare-fun cast-from-String-to-var1396 (String) var1396)
(declare-fun cast-from-var1396-to-String (var1396) String)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun array/-1274491448 (var318) (Array Int Int))
(declare-fun evalCode/-1274491448 (var318) Bool)
(declare-const null-var318 var318)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var263 var318) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.Source$RawData 
(assert (not (= var263 null-var318)))
(declare-const var1425 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1425 null-String)))
(declare-const var3873 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3873 null-Bool)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var318-to-var1396 var263))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var263!1 var318)
(define-const var3917 var1396 (var1756_requireNonNull/-961817614 (cast-from-String-to-var1396 var1425))) ; Statement: $r2 = staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>(r1) 
(define-const var2868 String (cast-from-var1396-to-String var3917)) ; Statement: $r3 = (java.lang.String) $r2 
(assert true)
(define-const var160 (Array Int Int) (toCharArray/415275702 var2868)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.String: char[] toCharArray()>() 
(declare-const var263!2 var318)
(assert (not (= var263!2 null-var318)))
(assert (= (array/-1274491448 var263!2) var160)) ; Statement: r0.<jdk.nashorn.internal.runtime.Source$RawData: char[] array> = $r4 
(declare-const var263!3 var318)
(assert (not (= var263!3 null-var318)))
(assert (= (evalCode/-1274491448 var263!3) var3873)) ; Statement: r0.<jdk.nashorn.internal.runtime.Source$RawData: boolean evalCode> = z0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var318-to-var1396=([jdk.nashorn.internal.runtime.Source$RawData], java.lang.Object), var1756_requireNonNull/-961817614=([java.lang.Object], java.lang.Object), cast-from-String-to-var1396=([java.lang.String], java.lang.Object), cast-from-var1396-to-String=([java.lang.Object], java.lang.String), toCharArray/415275702=([java.lang.String], char[]), array/-1274491448=([jdk.nashorn.internal.runtime.Source$RawData], char[]), evalCode/-1274491448=([jdk.nashorn.internal.runtime.Source$RawData], boolean)}
; {var318=jdk.nashorn.internal.runtime.Source$RawData, var263=r0, var1425=r1, var788=null_type, var3873=z0, var1396=java.lang.Object, var1756=java.util.Objects, var3917=$r2, var2868=$r3, var160=$r4}
; {jdk.nashorn.internal.runtime.Source$RawData=var318, r0=var263, r1=var1425, null_type=var788, z0=var3873, java.lang.Object=var1396, java.util.Objects=var1756, $r2=var3917, $r3=var2868, $r4=var160}
;seq <java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.runtime.Source$RawData;	r1 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r2 = staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>(r1);	$r3 = (java.lang.String) $r2;	$r4 = virtualinvoke $r3.<java.lang.String: char[] toCharArray()>();	r0.<jdk.nashorn.internal.runtime.Source$RawData: char[] array> = $r4;	r0.<jdk.nashorn.internal.runtime.Source$RawData: boolean evalCode> = z0;	return
;block_num 1