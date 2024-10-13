(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var141 0)
(declare-sort var2116 0)
(declare-sort var2152 0)
(declare-sort var3221 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getTypes/-1577411681 (var141) var2152)
(declare-fun var2152_get/1088891777 (var2152 var3221) var3221)
(declare-fun cast-from-String-to-var3221 (String) var3221)
(declare-fun cast-from-var3221-to-ClassObject (var3221) ClassObject)
(declare-const null-var141 var141)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const var1893 var141) ; Statement: r0 := @this: org.apache.ibatis.reflection.Reflector 
(assert (not (= var1893 null-var141)))
(declare-const var1085 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1085 null-String)))
(define-const var2224 var2152 (getTypes/-1577411681 var1893)) ; Statement: $r2 = r0.<org.apache.ibatis.reflection.Reflector: java.util.Map getTypes> 
(define-const var894 var3221 (var2152_get/1088891777 var2224 (cast-from-String-to-var3221 var1085))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var610 ClassObject (cast-from-var3221-to-ClassObject var894)) ; Statement: r4 = (java.lang.Class) $r3 
 ; Statement: if r4 != null goto return r4 
(assert (not (= var610 null-ClassObject))) ; Cond: r4 != null 
 ; Statement: return r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getTypes/-1577411681=([org.apache.ibatis.reflection.Reflector], java.util.Map), var2152_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var3221=([java.lang.String], java.lang.Object), cast-from-var3221-to-ClassObject=([java.lang.Object], java.lang.Class)}
; {var141=org.apache.ibatis.reflection.Reflector, var1893=r0, var1085=r1, var2116=null_type, var2152=java.util.Map, var2224=$r2, var3221=java.lang.Object, var894=$r3, var610=r4}
; {org.apache.ibatis.reflection.Reflector=var141, r0=var1893, r1=var1085, null_type=var2116, java.util.Map=var2152, $r2=var2224, java.lang.Object=var3221, $r3=var894, r4=var610}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.ibatis.reflection.Reflector;	r1 := @parameter0: java.lang.String;	$r2 = r0.<org.apache.ibatis.reflection.Reflector: java.util.Map getTypes>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (java.lang.Class) $r3;	if r4 != null goto return r4;	return r4
;block_num 2