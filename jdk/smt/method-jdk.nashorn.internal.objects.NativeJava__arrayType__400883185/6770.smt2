(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2611 0)
(declare-sort var3147 0)
(declare-sort var1493 0)
(declare-sort var2974 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun var3147_type/2143955014 (String) ClassObject)
(declare-fun var2974_newInstance/1168168314 (ClassObject Int) var1493)
(declare-fun getClass/1258963082 (var1493) ClassObject)
(declare-const null-String String)
(declare-const var2933 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2933 null-String)))
(assert true)
(define-const var1587 Int (length/-134980193 var2933)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var2410 Int (- var1587 2)) ; Statement: $i1 = $i0 - 2 
(assert (and true (and (>= 0 0) (>= (str.len var2933) var2410) (>= var2410 0))))
(define-const var2668 String (substring/-1240304868 var2933 0 var2410)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, $i1) 
(define-const var3531 ClassObject (var3147_type/2143955014 var2668)) ; Statement: $r2 = staticinvoke <jdk.nashorn.internal.objects.NativeJava: java.lang.Class type(java.lang.String)>($r1) 
(define-const var781 var1493 (var2974_newInstance/1168168314 var3531 0)) ; Statement: $r3 = staticinvoke <java.lang.reflect.Array: java.lang.Object newInstance(java.lang.Class,int)>($r2, 0) 
(assert true)
(define-const var2639 ClassObject (getClass/1258963082 var781)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Object: java.lang.Class getClass()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), var3147_type/2143955014=([java.lang.String], java.lang.Class), var2974_newInstance/1168168314=([java.lang.Class, int], java.lang.Object), getClass/1258963082=([java.lang.Object], java.lang.Class)}
; {var2933=r0, var2611=null_type, var1587=$i0, var2410=$i1, var2668=$r1, var3147=jdk.nashorn.internal.objects.NativeJava, var3531=$r2, var1493=java.lang.Object, var2974=java.lang.reflect.Array, var781=$r3, var2639=$r4}
; {r0=var2933, null_type=var2611, $i0=var1587, $i1=var2410, $r1=var2668, jdk.nashorn.internal.objects.NativeJava=var3147, $r2=var3531, java.lang.Object=var1493, java.lang.reflect.Array=var2974, $r3=var781, $r4=var2639}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	$i1 = $i0 - 2;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, $i1);	$r2 = staticinvoke <jdk.nashorn.internal.objects.NativeJava: java.lang.Class type(java.lang.String)>($r1);	$r3 = staticinvoke <java.lang.reflect.Array: java.lang.Object newInstance(java.lang.Class,int)>($r2, 0);	$r4 = virtualinvoke $r3.<java.lang.Object: java.lang.Class getClass()>();	return $r4
;block_num 1