(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1248 0)
(declare-sort var2896 0)
(declare-sort var1445 0)
(declare-sort var2589 0)
(declare-sort var2114 0)
(declare-sort var3137 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/1494046730 (var2114 var2896 var3137 Bool String String String Int) void)
(declare-fun cast-from-var1248-to-var2114 (var1248) var2114)
(declare-fun cast-from-var1445-to-var3137 (var1445) var3137)
(declare-fun getDeclaringClass/-1926367255 (var1445) ClassObject)
(declare-fun enumType/1144298533 (var1248) ClassObject)
(declare-const null-var1248 var1248)
(declare-const null-var2896 var2896)
(declare-const null-var1445 var1445)
(declare-const null-Bool Bool)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2585 var1248) ; Statement: r0 := @this: com.mysql.cj.conf.EnumPropertyDefinition 
(assert (not (= var2585 null-var1248)))
(declare-const var1852 var2896) ; Statement: r1 := @parameter0: com.mysql.cj.conf.PropertyKey 
(assert (not (= var1852 null-var2896)))
(declare-const var2021 var1445) ; Statement: r2 := @parameter1: java.lang.Enum 
(assert (not (= var2021 null-var1445)))
(declare-const var284 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var284 null-Bool)))
(declare-const var2785 String) ; Statement: r3 := @parameter3: java.lang.String 
(assert (not (= var2785 null-String)))
(declare-const var2980 String) ; Statement: r4 := @parameter4: java.lang.String 
(assert (not (= var2980 null-String)))
(declare-const var2857 String) ; Statement: r5 := @parameter5: java.lang.String 
(assert (not (= var2857 null-String)))
(declare-const var1663 Int) ; Statement: i0 := @parameter6: int 
(assert (not (= var1663 null-Int)))
(assert true)
;(assert (<init>/1494046730 (cast-from-var1248-to-var2114 var2585) var1852 (cast-from-var1445-to-var3137 var2021) var284 var2785 var2980 var2857 var1663)) ; Statement: specialinvoke r0.<com.mysql.cj.conf.AbstractPropertyDefinition: void <init>(com.mysql.cj.conf.PropertyKey,java.lang.Object,boolean,java.lang.String,java.lang.String,java.lang.String,int)>(r1, r2, z0, r3, r4, r5, i0) 

(declare-const var2585!1 var1248)
(declare-const var1852!1 var2896)
(declare-const var2021!1 var1445)
(declare-const var284!1 Bool)
(declare-const var2785!1 String)
(declare-const var2980!1 String)
(declare-const var2857!1 String)
(declare-const var1663!1 Int)
 ; Statement: if r2 != null goto $r6 = virtualinvoke r2.<java.lang.Enum: java.lang.Class getDeclaringClass()>() 
(assert (not (= var2021!1 null-var1445))) ; Cond: r2 != null 
(assert true)
(define-const var961 ClassObject (getDeclaringClass/-1926367255 var2021!1)) ; Statement: $r6 = virtualinvoke r2.<java.lang.Enum: java.lang.Class getDeclaringClass()>() 
(declare-const var2585!2 var1248)
(assert (not (= var2585!2 null-var1248)))
(assert (= (enumType/1144298533 var2585!2) var961)) ; Statement: r0.<com.mysql.cj.conf.EnumPropertyDefinition: java.lang.Class enumType> = $r6 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/1494046730=([com.mysql.cj.conf.AbstractPropertyDefinition, com.mysql.cj.conf.PropertyKey, java.lang.Object, boolean, java.lang.String, java.lang.String, java.lang.String, int], void), cast-from-var1248-to-var2114=([com.mysql.cj.conf.EnumPropertyDefinition], com.mysql.cj.conf.AbstractPropertyDefinition), cast-from-var1445-to-var3137=([java.lang.Enum], java.lang.Object), getDeclaringClass/-1926367255=([java.lang.Enum], java.lang.Class), enumType/1144298533=([com.mysql.cj.conf.EnumPropertyDefinition], java.lang.Class)}
; {var1248=com.mysql.cj.conf.EnumPropertyDefinition, var2585=r0, var2896=com.mysql.cj.conf.PropertyKey, var1852=r1, var1445=java.lang.Enum, var2021=r2, var284=z0, var2785=r3, var2589=null_type, var2980=r4, var2857=r5, var1663=i0, var2114=com.mysql.cj.conf.AbstractPropertyDefinition, var3137=java.lang.Object, var961=$r6}
; {com.mysql.cj.conf.EnumPropertyDefinition=var1248, r0=var2585, com.mysql.cj.conf.PropertyKey=var2896, r1=var1852, java.lang.Enum=var1445, r2=var2021, z0=var284, r3=var2785, null_type=var2589, r4=var2980, r5=var2857, i0=var1663, com.mysql.cj.conf.AbstractPropertyDefinition=var2114, java.lang.Object=var3137, $r6=var961}
;seq 
;cnt {}
;stmts r0 := @this: com.mysql.cj.conf.EnumPropertyDefinition;	r1 := @parameter0: com.mysql.cj.conf.PropertyKey;	r2 := @parameter1: java.lang.Enum;	z0 := @parameter2: boolean;	r3 := @parameter3: java.lang.String;	r4 := @parameter4: java.lang.String;	r5 := @parameter5: java.lang.String;	i0 := @parameter6: int;	specialinvoke r0.<com.mysql.cj.conf.AbstractPropertyDefinition: void <init>(com.mysql.cj.conf.PropertyKey,java.lang.Object,boolean,java.lang.String,java.lang.String,java.lang.String,int)>(r1, r2, z0, r3, r4, r5, i0);	if r2 != null goto $r6 = virtualinvoke r2.<java.lang.Enum: java.lang.Class getDeclaringClass()>();	$r6 = virtualinvoke r2.<java.lang.Enum: java.lang.Class getDeclaringClass()>();	r0.<com.mysql.cj.conf.EnumPropertyDefinition: java.lang.Class enumType> = $r6;	return
;block_num 2