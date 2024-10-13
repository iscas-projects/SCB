(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var917 0)
(declare-sort var1893 0)
(declare-sort var2912 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_join/-1520935655 (String (Array Int String)) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun cast-from-__Array__Int__String__-to-__Array__Int__String__ ((arg (Array Int String))) (Array Int String) arg)
(declare-fun arr-var2912-init () (Array Int var2912))
(declare-fun cast-from-String-to-var2912 (String) var2912)
(declare-fun String_format/1339386452 (String (Array Int var2912)) String)
(declare-const null-var917 var917)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-Bool Bool)
(declare-const null-__Array__Int__var2912__ (Array Int var2912))
(declare-const var2040 var917) ; Statement: r8 := @this: org.hibernate.dialect.MySQLDialect 
(assert (not (= var2040 null-var917)))
(declare-const var2555 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var2555 null-String)))
(declare-const var798 (Array Int String)) ; Statement: r0 := @parameter1: java.lang.String[] 
(assert (not (= var798 null-__Array__Int__String__)))
(declare-const var1790 String) ; Statement: r6 := @parameter2: java.lang.String 
(assert (not (= var1790 null-String)))
(declare-const var2842 (Array Int String)) ; Statement: r2 := @parameter3: java.lang.String[] 
(assert (not (= var2842 null-__Array__Int__String__)))
(declare-const var1155 Bool) ; Statement: z0 := @parameter4: boolean 
(assert (not (= var1155 null-Bool)))
(define-const var1452 String (String_join/-1520935655 (cast-from-String-to-String ", ") (cast-from-__Array__Int__String__-to-__Array__Int__String__ var798))) ; Statement: r1 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(", ", r0) 
(define-const var3053 String (String_join/-1520935655 (cast-from-String-to-String ", ") (cast-from-__Array__Int__String__-to-__Array__Int__String__ var2842))) ; Statement: r3 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(", ", r2) 
(define-const var819 (Array Int var2912) arr-var2912-init) ; Statement: $r4 = newarray (java.lang.Object)[4] 
(declare-const var819!1 (Array Int var2912))
(assert (not (= var819!1 null-__Array__Int__var2912__)))
(assert (= (select var819!1 0) (cast-from-String-to-var2912 var2555))) ; Statement: $r4[0] = r5 
(declare-const var819!2 (Array Int var2912))
(assert (not (= var819!2 null-__Array__Int__var2912__)))
(assert (= (select var819!2 1) (cast-from-String-to-var2912 var1452))) ; Statement: $r4[1] = r1 
(declare-const var819!3 (Array Int var2912))
(assert (not (= var819!3 null-__Array__Int__var2912__)))
(assert (= (select var819!3 2) (cast-from-String-to-var2912 var1790))) ; Statement: $r4[2] = r6 
(declare-const var819!4 (Array Int var2912))
(assert (not (= var819!4 null-__Array__Int__var2912__)))
(assert (= (select var819!4 3) (cast-from-String-to-var2912 var3053))) ; Statement: $r4[3] = r3 
(define-const var2929 String (String_format/1339386452 " add constraint %s foreign key (%s) references %s (%s)" var819!4)) ; Statement: $r7 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(" add constraint %s foreign key (%s) references %s (%s)", $r4) 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String_join/-1520935655=([java.lang.CharSequence, java.lang.CharSequence[]], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), cast-from-__Array__Int__String__-to-__Array__Int__String__=([java.lang.String[]], java.lang.CharSequence[]), arr-var2912-init=([], java.lang.Object[]), cast-from-String-to-var2912=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var917=org.hibernate.dialect.MySQLDialect, var2040=r8, var2555=r5, var1893=null_type, var798=r0, var1790=r6, var2842=r2, var1155=z0, var1452=r1, var3053=r3, var2912=java.lang.Object, var819=$r4, var2929=$r7}
; {org.hibernate.dialect.MySQLDialect=var917, r8=var2040, r5=var2555, null_type=var1893, r0=var798, r6=var1790, r2=var2842, z0=var1155, r1=var1452, r3=var3053, java.lang.Object=var2912, $r4=var819, $r7=var2929}
;seq <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>;	<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>": 2,"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r8 := @this: org.hibernate.dialect.MySQLDialect;	r5 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String[];	r6 := @parameter2: java.lang.String;	r2 := @parameter3: java.lang.String[];	z0 := @parameter4: boolean;	r1 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(", ", r0);	r3 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(", ", r2);	$r4 = newarray (java.lang.Object)[4];	$r4[0] = r5;	$r4[1] = r1;	$r4[2] = r6;	$r4[3] = r3;	$r7 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(" add constraint %s foreign key (%s) references %s (%s)", $r4);	return $r7
;block_num 1