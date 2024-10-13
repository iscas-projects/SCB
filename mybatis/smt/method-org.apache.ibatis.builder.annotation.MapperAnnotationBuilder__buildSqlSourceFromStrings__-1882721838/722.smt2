(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3711 0)
(declare-sort var2766 0)
(declare-sort var1616 0)
(declare-sort var322 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun configuration/-1562462879 (var3711) var1616)
(declare-fun String_join/-1520935655 (String (Array Int String)) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun cast-from-__Array__Int__String__-to-__Array__Int__String__ ((arg (Array Int String))) (Array Int String) arg)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun var2766_createSqlSource/-1718042383 (var2766 var1616 String ClassObject) var322)
(declare-const null-var3711 var3711)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-ClassObject ClassObject)
(declare-const null-var2766 var2766)
(declare-const var1387 var3711) ; Statement: r1 := @this: org.apache.ibatis.builder.annotation.MapperAnnotationBuilder 
(assert (not (= var1387 null-var3711)))
(declare-const var1907 (Array Int String)) ; Statement: r2 := @parameter0: java.lang.String[] 
(assert (not (= var1907 null-__Array__Int__String__)))
(declare-const var1643 ClassObject) ; Statement: r5 := @parameter1: java.lang.Class 
(assert (not (= var1643 null-ClassObject)))
(declare-const var213 var2766) ; Statement: r0 := @parameter2: org.apache.ibatis.scripting.LanguageDriver 
(assert (not (= var213 null-var2766)))
(define-const var1075 var1616 (configuration/-1562462879 var1387)) ; Statement: $r3 = r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.session.Configuration configuration> 
(define-const var1855 String (String_join/-1520935655 (cast-from-String-to-String " ") (cast-from-__Array__Int__String__-to-__Array__Int__String__ var1907))) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(" ", r2) 
(assert true)
(define-const var3328 String (trim/-847153721 var1855)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.String: java.lang.String trim()>() 
(define-const var3161 var322 (var2766_createSqlSource/-1718042383 var213 var1075 var3328 var1643)) ; Statement: $r7 = interfaceinvoke r0.<org.apache.ibatis.scripting.LanguageDriver: org.apache.ibatis.mapping.SqlSource createSqlSource(org.apache.ibatis.session.Configuration,java.lang.String,java.lang.Class)>($r3, $r6, r5) 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {configuration/-1562462879=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder], org.apache.ibatis.session.Configuration), String_join/-1520935655=([java.lang.CharSequence, java.lang.CharSequence[]], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), cast-from-__Array__Int__String__-to-__Array__Int__String__=([java.lang.String[]], java.lang.CharSequence[]), trim/-847153721=([java.lang.String], java.lang.String), var2766_createSqlSource/-1718042383=([org.apache.ibatis.scripting.LanguageDriver, org.apache.ibatis.session.Configuration, java.lang.String, java.lang.Class], org.apache.ibatis.mapping.SqlSource)}
; {var3711=org.apache.ibatis.builder.annotation.MapperAnnotationBuilder, var1387=r1, var1907=r2, var1643=r5, var2766=org.apache.ibatis.scripting.LanguageDriver, var213=r0, var1616=org.apache.ibatis.session.Configuration, var1075=$r3, var1855=$r4, var3328=$r6, var322=org.apache.ibatis.mapping.SqlSource, var3161=$r7}
; {org.apache.ibatis.builder.annotation.MapperAnnotationBuilder=var3711, r1=var1387, r2=var1907, r5=var1643, org.apache.ibatis.scripting.LanguageDriver=var2766, r0=var213, org.apache.ibatis.session.Configuration=var1616, $r3=var1075, $r4=var1855, $r6=var3328, org.apache.ibatis.mapping.SqlSource=var322, $r7=var3161}
;seq <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>;	<java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>": 1,"<java.lang.String: java.lang.String trim()>": 1}
;stmts r1 := @this: org.apache.ibatis.builder.annotation.MapperAnnotationBuilder;	r2 := @parameter0: java.lang.String[];	r5 := @parameter1: java.lang.Class;	r0 := @parameter2: org.apache.ibatis.scripting.LanguageDriver;	$r3 = r1.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder: org.apache.ibatis.session.Configuration configuration>;	$r4 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(" ", r2);	$r6 = virtualinvoke $r4.<java.lang.String: java.lang.String trim()>();	$r7 = interfaceinvoke r0.<org.apache.ibatis.scripting.LanguageDriver: org.apache.ibatis.mapping.SqlSource createSqlSource(org.apache.ibatis.session.Configuration,java.lang.String,java.lang.Class)>($r3, $r6, r5);	return $r7
;block_num 1