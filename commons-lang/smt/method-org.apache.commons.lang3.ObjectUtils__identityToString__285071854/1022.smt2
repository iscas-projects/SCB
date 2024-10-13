(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var252 0)
(declare-sort var2452 0)
(declare-sort var3117 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2452_requireNonNull/1378936425 (var252 String) var252)
(declare-fun getClass/1258963082 (var252) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun var3117_identityHashCodeHex/834881754 (var252) String)
(declare-fun length/-1112840705 (String) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun ensureCapacity/378252057 (String Int) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/1183289509 (String Int) String)
(declare-const null-String String)
(declare-const null-var252 var252)
(declare-const var1376 String) ; Statement: r4 := @parameter0: java.lang.StringBuffer 
(assert (not (= var1376 null-String)))
(declare-const var1529 var252) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var1529 null-var252)))
;(assert (var2452_requireNonNull/1378936425 var1529 "object")) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "object") 

(declare-const var1529!1 var252)
(declare-const var2265 String)
(assert true)
(define-const var3862 ClassObject (getClass/1258963082 var1529!1)) ; Statement: $r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1850 String (getName/-1958580599 var3862)) ; Statement: r2 = virtualinvoke $r1.<java.lang.Class: java.lang.String getName()>() 
(define-const var94 String (var3117_identityHashCodeHex/834881754 var1529!1)) ; Statement: r3 = staticinvoke <org.apache.commons.lang3.ObjectUtils: java.lang.String identityHashCodeHex(java.lang.Object)>(r0) 
(assert true)
(define-const var588 Int (length/-1112840705 var1376)) ; Statement: $i1 = virtualinvoke r4.<java.lang.StringBuffer: int length()>() 
(assert true)
(define-const var3322 Int (length/-134980193 var1850)) ; Statement: $i0 = virtualinvoke r2.<java.lang.String: int length()>() 
(define-const var736 Int (+ var588 var3322)) ; Statement: $i2 = $i1 + $i0 
(define-const var3035 Int (+ var736 1)) ; Statement: $i4 = $i2 + 1 
(assert true)
(define-const var3567 Int (length/-134980193 var94)) ; Statement: $i3 = virtualinvoke r3.<java.lang.String: int length()>() 
(define-const var1689 Int (+ var3035 var3567)) ; Statement: $i5 = $i4 + $i3 
(assert true)
;(assert (ensureCapacity/378252057 var1376 var1689)) ; Statement: virtualinvoke r4.<java.lang.StringBuffer: void ensureCapacity(int)>($i5) 

(declare-const var1376!1 String)
(declare-const var1689!1 Int)
(assert true)
(define-const var3031 String (append/1560614132 var1376!1 var1850)) ; Statement: $r5 = virtualinvoke r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r2) 
(declare-const var1376!2 String)
(assert (str.prefixof var1376!1 var1376!2))
(assert true)
(define-const var2031 String (append/1183289509 var3031 64)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(64) 
(assert true)
;(assert (append/1560614132 var2031 var94)) ; Statement: virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r3) 
(declare-const var2031!1 String)
(assert (str.prefixof var2031 var2031!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2452_requireNonNull/1378936425=([java.lang.Object, java.lang.String], java.lang.Object), getClass/1258963082=([java.lang.Object], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), var3117_identityHashCodeHex/834881754=([java.lang.Object], java.lang.String), length/-1112840705=([java.lang.StringBuffer], int), length/-134980193=([java.lang.String], int), ensureCapacity/378252057=([java.lang.StringBuffer, int], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer)}
; {var1376=r4, var252=java.lang.Object, var1529=r0, var2452=java.util.Objects, var2265="object", var3862=$r1, var1850=r2, var3117=org.apache.commons.lang3.ObjectUtils, var94=r3, var588=$i1, var3322=$i0, var736=$i2, var3035=$i4, var3567=$i3, var1689=$i5, var3031=$r5, var2031=$r6}
; {r4=var1376, java.lang.Object=var252, r0=var1529, java.util.Objects=var2452, "object"=var2265, $r1=var3862, r2=var1850, org.apache.commons.lang3.ObjectUtils=var3117, r3=var94, $i1=var588, $i0=var3322, $i2=var736, $i4=var3035, $i3=var3567, $i5=var1689, $r5=var3031, $r6=var2031}
;seq <java.lang.StringBuffer: int length()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuffer: void ensureCapacity(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: int length()>": 1,"<java.lang.String: int length()>": 2,"<java.lang.StringBuffer: void ensureCapacity(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 1}
;stmts r4 := @parameter0: java.lang.StringBuffer;	r0 := @parameter1: java.lang.Object;	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "object");	$r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	r2 = virtualinvoke $r1.<java.lang.Class: java.lang.String getName()>();	r3 = staticinvoke <org.apache.commons.lang3.ObjectUtils: java.lang.String identityHashCodeHex(java.lang.Object)>(r0);	$i1 = virtualinvoke r4.<java.lang.StringBuffer: int length()>();	$i0 = virtualinvoke r2.<java.lang.String: int length()>();	$i2 = $i1 + $i0;	$i4 = $i2 + 1;	$i3 = virtualinvoke r3.<java.lang.String: int length()>();	$i5 = $i4 + $i3;	virtualinvoke r4.<java.lang.StringBuffer: void ensureCapacity(int)>($i5);	$r5 = virtualinvoke r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r2);	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(64);	virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r3);	return
;block_num 1