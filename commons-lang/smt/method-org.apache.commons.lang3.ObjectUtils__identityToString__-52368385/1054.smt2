(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3489 0)
(declare-sort var892 0)
(declare-sort var1428 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var892_requireNonNull/1378936425 (var3489 String) var3489)
(declare-fun getClass/1258963082 (var3489) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun var1428_identityHashCodeHex/834881754 (var3489) String)
(declare-fun length/-171891354 (String) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun ensureCapacity/-1884125184 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-const null-String String)
(declare-const null-var3489 var3489)
(declare-const var3303 String) ; Statement: r4 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3303 null-String)))
(declare-const var2798 var3489) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var2798 null-var3489)))
;(assert (var892_requireNonNull/1378936425 var2798 "object")) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "object") 

(declare-const var2798!1 var3489)
(declare-const var423 String)
(assert true)
(define-const var3097 ClassObject (getClass/1258963082 var2798!1)) ; Statement: $r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var532 String (getName/-1958580599 var3097)) ; Statement: r2 = virtualinvoke $r1.<java.lang.Class: java.lang.String getName()>() 
(define-const var608 String (var1428_identityHashCodeHex/834881754 var2798!1)) ; Statement: r3 = staticinvoke <org.apache.commons.lang3.ObjectUtils: java.lang.String identityHashCodeHex(java.lang.Object)>(r0) 
(assert true)
(define-const var3331 Int (length/-171891354 var3303)) ; Statement: $i1 = virtualinvoke r4.<java.lang.StringBuilder: int length()>() 
(assert true)
(define-const var422 Int (length/-134980193 var532)) ; Statement: $i0 = virtualinvoke r2.<java.lang.String: int length()>() 
(define-const var3859 Int (+ var3331 var422)) ; Statement: $i2 = $i1 + $i0 
(define-const var1721 Int (+ var3859 1)) ; Statement: $i4 = $i2 + 1 
(assert true)
(define-const var751 Int (length/-134980193 var608)) ; Statement: $i3 = virtualinvoke r3.<java.lang.String: int length()>() 
(define-const var1144 Int (+ var1721 var751)) ; Statement: $i5 = $i4 + $i3 
(assert true)
;(assert (ensureCapacity/-1884125184 var3303 var1144)) ; Statement: virtualinvoke r4.<java.lang.StringBuilder: void ensureCapacity(int)>($i5) 

(declare-const var3303!1 String)
(declare-const var1144!1 Int)
(assert true)
(define-const var1778 String (append/672562846 var3303!1 var532)) ; Statement: $r5 = virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3303!2 String)
(assert (= var3303!2 (str.++ var3303!1 var532)))
(assert true)
(define-const var520 String (append/-1166366385 var1778 64)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(64) 
(declare-const var1778!1 String)
(assert (str.prefixof var1778 var1778!1))
(assert true)
;(assert (append/672562846 var520 var608)) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var520!1 String)
(assert (= var520!1 (str.++ var520 var608)))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var892_requireNonNull/1378936425=([java.lang.Object, java.lang.String], java.lang.Object), getClass/1258963082=([java.lang.Object], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), var1428_identityHashCodeHex/834881754=([java.lang.Object], java.lang.String), length/-171891354=([java.lang.StringBuilder], int), length/-134980193=([java.lang.String], int), ensureCapacity/-1884125184=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder)}
; {var3303=r4, var3489=java.lang.Object, var2798=r0, var892=java.util.Objects, var423="object", var3097=$r1, var532=r2, var1428=org.apache.commons.lang3.ObjectUtils, var608=r3, var3331=$i1, var422=$i0, var3859=$i2, var1721=$i4, var751=$i3, var1144=$i5, var1778=$r5, var520=$r6}
; {r4=var3303, java.lang.Object=var3489, r0=var2798, java.util.Objects=var892, "object"=var423, $r1=var3097, r2=var532, org.apache.commons.lang3.ObjectUtils=var1428, r3=var608, $i1=var3331, $i0=var422, $i2=var3859, $i4=var1721, $i3=var751, $i5=var1144, $r5=var1778, $r6=var520}
;seq <java.lang.StringBuilder: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void ensureCapacity(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: int length()>": 1,"<java.lang.String: int length()>": 2,"<java.lang.StringBuilder: void ensureCapacity(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r4 := @parameter0: java.lang.StringBuilder;	r0 := @parameter1: java.lang.Object;	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "object");	$r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	r2 = virtualinvoke $r1.<java.lang.Class: java.lang.String getName()>();	r3 = staticinvoke <org.apache.commons.lang3.ObjectUtils: java.lang.String identityHashCodeHex(java.lang.Object)>(r0);	$i1 = virtualinvoke r4.<java.lang.StringBuilder: int length()>();	$i0 = virtualinvoke r2.<java.lang.String: int length()>();	$i2 = $i1 + $i0;	$i4 = $i2 + 1;	$i3 = virtualinvoke r3.<java.lang.String: int length()>();	$i5 = $i4 + $i3;	virtualinvoke r4.<java.lang.StringBuilder: void ensureCapacity(int)>($i5);	$r5 = virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(64);	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	return
;block_num 1