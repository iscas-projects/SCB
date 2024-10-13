(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var922 0)
(declare-sort var718 0)
(declare-sort var2484 0)
(declare-sort var2175 0)
(declare-sort var1103 0)
(declare-sort var2566 0)
(declare-sort var1233 0)
(declare-sort var252 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var252!class ClassObject)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-718039953 (var1103) String)
(declare-fun cast-from-var922-to-var1103 (var922) var1103)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1233_createException/-988168188 (ClassObject String var2484) var2566)
(declare-fun cast-from-var2566-to-var252 (var2566) var252)
(declare-const null-var922 var922)
(declare-const null-String String)
(declare-const null-var2484 var2484)
(declare-const null-var2175 var2175)
(declare-const var3479 var922) ; Statement: r5 := @this: com.mysql.cj.conf.LongPropertyDefinition 
(assert (not (= var3479 null-var922)))
(declare-const var3401 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3401 null-String)))
(declare-const var1749 var2484) ; Statement: r12 := @parameter1: com.mysql.cj.exceptions.ExceptionInterceptor 
(assert (not (= var1749 null-var2484)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var624 var2175) ; Statement: $r3 := @caughtexception 
(assert (not (= var624 null-var2175)))
(define-const var278 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var278)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var278!1 String)
(assert (= var278!1 ""))
(assert true)
(define-const var0 String (append/672562846 var278!1 "The connection property \u0027")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The connection property \'") 
(declare-const var278!2 String)
(assert (= var278!2 (str.++ var278!1 "The connection property \u0027")))
(assert true)
(define-const var1818 String (getName/-718039953 (cast-from-var922-to-var1103 var3479))) ; Statement: $r6 = virtualinvoke r5.<com.mysql.cj.conf.LongPropertyDefinition: java.lang.String getName()>() 
(assert true)
(define-const var3108 String (append/672562846 var0 var1818)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var0!1 String)
(assert (= var0!1 (str.++ var0 var1818)))
(assert true)
(define-const var121 String (append/672562846 var3108 "\u0027 only accepts long integer values. The value \u0027")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' only accepts long integer values. The value \'") 
(declare-const var3108!1 String)
(assert (= var3108!1 (str.++ var3108 "\u0027 only accepts long integer values. The value \u0027")))
(assert true)
(define-const var1074 String (append/672562846 var121 var3401)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var121!1 String)
(assert (= var121!1 (str.++ var121 var3401)))
(assert true)
(define-const var3434 String (append/672562846 var1074 "\u0027 can not be converted to a long integer.")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' can not be converted to a long integer.") 
(declare-const var1074!1 String)
(assert (= var1074!1 (str.++ var1074 "\u0027 can not be converted to a long integer.")))
(assert true)
(define-const var3293 String (toString/-2075883882 var3434)) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1281 var2566 (var1233_createException/-988168188 var252!class var3293 var1749)) ; Statement: $r14 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.Class,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>(class "Lcom/mysql/cj/exceptions/WrongArgumentException;", $r13, r12) 
(define-const var1237 var252 (cast-from-var2566-to-var252 var1281)) ; Statement: $r15 = (com.mysql.cj.exceptions.WrongArgumentException) $r14 
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-718039953=([com.mysql.cj.conf.AbstractPropertyDefinition], java.lang.String), cast-from-var922-to-var1103=([com.mysql.cj.conf.LongPropertyDefinition], com.mysql.cj.conf.AbstractPropertyDefinition), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1233_createException/-988168188=([java.lang.Class, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], com.mysql.cj.exceptions.CJException), cast-from-var2566-to-var252=([com.mysql.cj.exceptions.CJException], com.mysql.cj.exceptions.WrongArgumentException)}
; {var922=com.mysql.cj.conf.LongPropertyDefinition, var3479=r5, var3401=r0, var718=null_type, var2484=com.mysql.cj.exceptions.ExceptionInterceptor, var1749=r12, var2175=java.lang.NumberFormatException, var624=$r3, var278=$r4, var0=$r7, var1103=com.mysql.cj.conf.AbstractPropertyDefinition, var1818=$r6, var3108=$r8, var121=$r9, var1074=$r10, var3434=$r11, var3293=$r13, var2566=com.mysql.cj.exceptions.CJException, var1233=com.mysql.cj.exceptions.ExceptionFactory, var252=com.mysql.cj.exceptions.WrongArgumentException, var1281=$r14, var1237=$r15}
; {com.mysql.cj.conf.LongPropertyDefinition=var922, r5=var3479, r0=var3401, null_type=var718, com.mysql.cj.exceptions.ExceptionInterceptor=var2484, r12=var1749, java.lang.NumberFormatException=var2175, $r3=var624, $r4=var278, $r7=var0, com.mysql.cj.conf.AbstractPropertyDefinition=var1103, $r6=var1818, $r8=var3108, $r9=var121, $r10=var1074, $r11=var3434, $r13=var3293, com.mysql.cj.exceptions.CJException=var2566, com.mysql.cj.exceptions.ExceptionFactory=var1233, com.mysql.cj.exceptions.WrongArgumentException=var252, $r14=var1281, $r15=var1237}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: com.mysql.cj.conf.LongPropertyDefinition;	r0 := @parameter0: java.lang.String;	r12 := @parameter1: com.mysql.cj.exceptions.ExceptionInterceptor;	$r3 := @caughtexception;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The connection property \'");	$r6 = virtualinvoke r5.<com.mysql.cj.conf.LongPropertyDefinition: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' only accepts long integer values. The value \'");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' can not be converted to a long integer.");	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.Class,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>(class "Lcom/mysql/cj/exceptions/WrongArgumentException;", $r13, r12);	$r15 = (com.mysql.cj.exceptions.WrongArgumentException) $r14;	throw $r15
;block_num 2