(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3558 0)
(declare-sort var3090 0)
(declare-sort var1698 0)
(declare-sort var2710 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-String-init () (Array Int String))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var1698_hasEmpty/-519311252 ((Array Int String)) Bool)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun var2710_createCredential/-1680984936 (String String (Array Int Int)) var2710)
(declare-const null-var3558 var3558)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var534 var3558) ; Statement: r6 := @this: cn.hutool.db.nosql.mongo.MongoDS 
(assert (not (= var534 null-var3558)))
(declare-const var1208 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1208 null-String)))
(declare-const var957 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var957 null-String)))
(declare-const var2703 String) ; Statement: r3 := @parameter2: java.lang.String 
(assert (not (= var2703 null-String)))
(define-const var71 (Array Int String) arr-String-init) ; Statement: $r0 = newarray (java.lang.CharSequence)[3] 
(declare-const var71!1 (Array Int String))
(assert (not (= var71!1 null-__Array__Int__String__)))
(assert (= (select var71!1 0) (cast-from-String-to-String var1208))) ; Statement: $r0[0] = r1 
(declare-const var71!2 (Array Int String))
(assert (not (= var71!2 null-__Array__Int__String__)))
(assert (= (select var71!2 1) (cast-from-String-to-String var957))) ; Statement: $r0[1] = r2 
(declare-const var71!3 (Array Int String))
(assert (not (= var71!3 null-__Array__Int__String__)))
(assert (= (select var71!3 2) (cast-from-String-to-String var957))) ; Statement: $r0[2] = r2 
(define-const var3598 Bool (var1698_hasEmpty/-519311252 var71!3)) ; Statement: $z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean hasEmpty(java.lang.CharSequence[])>($r0) 
 ; Statement: if $z0 == 0 goto $r4 = virtualinvoke r3.<java.lang.String: char[] toCharArray()>() 
(assert (= (ite var3598 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1640 (Array Int Int) (toCharArray/415275702 var2703)) ; Statement: $r4 = virtualinvoke r3.<java.lang.String: char[] toCharArray()>() 
(define-const var3452 var2710 (var2710_createCredential/-1680984936 var1208 var957 var1640)) ; Statement: $r5 = staticinvoke <com.mongodb.MongoCredential: com.mongodb.MongoCredential createCredential(java.lang.String,java.lang.String,char[])>(r1, r2, $r4) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-String-init=([], java.lang.CharSequence[]), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var1698_hasEmpty/-519311252=([java.lang.CharSequence[]], boolean), toCharArray/415275702=([java.lang.String], char[]), var2710_createCredential/-1680984936=([java.lang.String, java.lang.String, char[]], com.mongodb.MongoCredential)}
; {var3558=cn.hutool.db.nosql.mongo.MongoDS, var534=r6, var1208=r1, var3090=null_type, var957=r2, var2703=r3, var71=$r0, var1698=cn.hutool.core.text.CharSequenceUtil, var3598=$z0, var1640=$r4, var2710=com.mongodb.MongoCredential, var3452=$r5}
; {cn.hutool.db.nosql.mongo.MongoDS=var3558, r6=var534, r1=var1208, null_type=var3090, r2=var957, r3=var2703, $r0=var71, cn.hutool.core.text.CharSequenceUtil=var1698, $z0=var3598, $r4=var1640, com.mongodb.MongoCredential=var2710, $r5=var3452}
;seq <java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts r6 := @this: cn.hutool.db.nosql.mongo.MongoDS;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	r3 := @parameter2: java.lang.String;	$r0 = newarray (java.lang.CharSequence)[3];	$r0[0] = r1;	$r0[1] = r2;	$r0[2] = r2;	$z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean hasEmpty(java.lang.CharSequence[])>($r0);	if $z0 == 0 goto $r4 = virtualinvoke r3.<java.lang.String: char[] toCharArray()>();	$r4 = virtualinvoke r3.<java.lang.String: char[] toCharArray()>();	$r5 = staticinvoke <com.mongodb.MongoCredential: com.mongodb.MongoCredential createCredential(java.lang.String,java.lang.String,char[])>(r1, r2, $r4);	return $r5
;block_num 2