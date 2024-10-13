(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3411 0)
(declare-sort var1012 0)
(declare-sort var1119 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isArray/604507311 (var3411) Bool)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getName/1611768686 (var3411) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun var1119_toJvmName/1317421666 (String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-String String)
(declare-const null-var3411 var3411)
(declare-const null-var1012 var1012)
(declare-const var3199 String) ; Statement: r1 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3199 null-String)))
(declare-const var404 var3411) ; Statement: r0 := @parameter1: org.apache.ibatis.javassist.CtClass 
(assert (not (= var404 null-var3411)))
(assert true)
(define-const var1788 Bool (isArray/604507311 var404)) ; Statement: $z0 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: boolean isArray()>() 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: boolean isPrimitive()>() 
(assert (not (= (ite var1788 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
;(assert (append/-1166366385 var3199 91)) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var3199!1 String)
(assert (str.prefixof var3199 var3199!1))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2189 var1012) ; Statement: $r5 := @caughtexception 
(assert (not (= var2189 null-var1012)))
(assert true)
;(assert (append/-1166366385 var3199!1 76)) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(76) 
(declare-const var3199!2 String)
(assert (str.prefixof var3199!1 var3199!2))
(assert true)
(define-const var1141 String (getName/1611768686 var404)) ; Statement: r6 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: java.lang.String getName()>() 
(assert true)
(define-const var2361 Int (length/-134980193 var1141)) ; Statement: $i1 = virtualinvoke r6.<java.lang.String: int length()>() 
(define-const var2128 Int (- var2361 2)) ; Statement: $i2 = $i1 - 2 
(assert (and true (and (>= 0 0) (>= (str.len var1141) var2128) (>= var2128 0))))
(define-const var3184 String (substring/-1240304868 var1141 0 var2128)) ; Statement: $r7 = virtualinvoke r6.<java.lang.String: java.lang.String substring(int,int)>(0, $i2) 
(define-const var3982 String (var1119_toJvmName/1317421666 var3184)) ; Statement: $r8 = staticinvoke <org.apache.ibatis.javassist.bytecode.Descriptor: java.lang.String toJvmName(java.lang.String)>($r7) 
(assert true)
;(assert (append/672562846 var3199!2 var3982)) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var3199!3 String)
(assert (= var3199!3 (str.++ var3199!2 var3982)))
(assert true)
;(assert (append/-1166366385 var3199!3 59)) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(59) 
(declare-const var3199!4 String)
(assert (str.prefixof var3199!3 var3199!4))
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {isArray/604507311=([org.apache.ibatis.javassist.CtClass], boolean), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getName/1611768686=([org.apache.ibatis.javassist.CtClass], java.lang.String), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), var1119_toJvmName/1317421666=([java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var3199=r1, var3411=org.apache.ibatis.javassist.CtClass, var404=r0, var1788=$z0, var1012=org.apache.ibatis.javassist.NotFoundException, var2189=$r5, var1141=r6, var2361=$i1, var2128=$i2, var3184=$r7, var1119=org.apache.ibatis.javassist.bytecode.Descriptor, var3982=$r8}
; {r1=var3199, org.apache.ibatis.javassist.CtClass=var3411, r0=var404, $z0=var1788, org.apache.ibatis.javassist.NotFoundException=var1012, $r5=var2189, r6=var1141, $i1=var2361, $i2=var2128, $r7=var3184, org.apache.ibatis.javassist.bytecode.Descriptor=var1119, $r8=var3982}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 3,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r1 := @parameter0: java.lang.StringBuilder;	r0 := @parameter1: org.apache.ibatis.javassist.CtClass;	$z0 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: boolean isArray()>();	if $z0 == 0 goto $z1 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: boolean isPrimitive()>();	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	$r5 := @caughtexception;	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(76);	r6 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: java.lang.String getName()>();	$i1 = virtualinvoke r6.<java.lang.String: int length()>();	$i2 = $i1 - 2;	$r7 = virtualinvoke r6.<java.lang.String: java.lang.String substring(int,int)>(0, $i2);	$r8 = staticinvoke <org.apache.ibatis.javassist.bytecode.Descriptor: java.lang.String toJvmName(java.lang.String)>($r7);	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(59);	goto [?= return];	return
;block_num 4