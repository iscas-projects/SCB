(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3499 0)
(declare-sort var814 0)
(declare-sort var950 0)
(declare-sort var205 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun containsKey/1412401341 (var3499 var950) Bool)
(declare-fun cast-from-String-to-var950 (String) var950)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun put/-1753019971 (var205 var950 var950) var950)
(declare-fun cast-from-var3499-to-var205 (var3499) var205)
(declare-const null-var3499 var3499)
(declare-const null-String String)
(declare-const null-var950 var950)
(declare-const var2047 var3499) ; Statement: r0 := @this: org.apache.ibatis.session.Configuration$StrictMap 
(assert (not (= var2047 null-var3499)))
(declare-const var2278 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2278 null-String)))
(declare-const var3223 var950) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var3223 null-var950)))
(assert true)
(define-const var3163 Bool (containsKey/1412401341 var2047 (cast-from-String-to-var950 var2278))) ; Statement: $z0 = virtualinvoke r0.<org.apache.ibatis.session.Configuration$StrictMap: boolean containsKey(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r1.<java.lang.String: boolean contains(java.lang.CharSequence)>(".") 
(assert (= (ite var3163 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2751 Bool (contains/1009244746 var2278 (cast-from-String-to-String "."))) ; Statement: $z1 = virtualinvoke r1.<java.lang.String: boolean contains(java.lang.CharSequence)>(".") 
 ; Statement: if $z1 == 0 goto $r19 = specialinvoke r0.<java.util.concurrent.ConcurrentHashMap: java.lang.Object put(java.lang.Object,java.lang.Object)>(r1, r2) 
(assert (= (ite var2751 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var1958 var950 (put/-1753019971 (cast-from-var3499-to-var205 var2047) (cast-from-String-to-var950 var2278) var3223)) ; Statement: $r19 = specialinvoke r0.<java.util.concurrent.ConcurrentHashMap: java.lang.Object put(java.lang.Object,java.lang.Object)>(r1, r2) 
 ; Statement: return $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {containsKey/1412401341=([org.apache.ibatis.session.Configuration$StrictMap, java.lang.Object], boolean), cast-from-String-to-var950=([java.lang.String], java.lang.Object), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), put/-1753019971=([java.util.concurrent.ConcurrentHashMap, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var3499-to-var205=([org.apache.ibatis.session.Configuration$StrictMap], java.util.concurrent.ConcurrentHashMap)}
; {var3499=org.apache.ibatis.session.Configuration$StrictMap, var2047=r0, var2278=r1, var814=null_type, var950=java.lang.Object, var3223=r2, var3163=$z0, var2751=$z1, var205=java.util.concurrent.ConcurrentHashMap, var1958=$r19}
; {org.apache.ibatis.session.Configuration$StrictMap=var3499, r0=var2047, r1=var2278, null_type=var814, java.lang.Object=var950, r2=var3223, $z0=var3163, $z1=var2751, java.util.concurrent.ConcurrentHashMap=var205, $r19=var1958}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r0 := @this: org.apache.ibatis.session.Configuration$StrictMap;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.Object;	$z0 = virtualinvoke r0.<org.apache.ibatis.session.Configuration$StrictMap: boolean containsKey(java.lang.Object)>(r1);	if $z0 == 0 goto $z1 = virtualinvoke r1.<java.lang.String: boolean contains(java.lang.CharSequence)>(".");	$z1 = virtualinvoke r1.<java.lang.String: boolean contains(java.lang.CharSequence)>(".");	if $z1 == 0 goto $r19 = specialinvoke r0.<java.util.concurrent.ConcurrentHashMap: java.lang.Object put(java.lang.Object,java.lang.Object)>(r1, r2);	$r19 = specialinvoke r0.<java.util.concurrent.ConcurrentHashMap: java.lang.Object put(java.lang.Object,java.lang.Object)>(r1, r2);	return $r19
;block_num 3