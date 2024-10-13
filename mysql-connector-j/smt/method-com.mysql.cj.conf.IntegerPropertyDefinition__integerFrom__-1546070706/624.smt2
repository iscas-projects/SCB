(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3858 0)
(declare-sort var3558 0)
(declare-sort var701 0)
(declare-sort var1729 0)
(declare-sort var2253 0)
(declare-sort var1049 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1049!class ClassObject)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2253_createException/-988168188 (ClassObject String var3558) var1729)
(declare-fun cast-from-var1729-to-var1049 (var1729) var1049)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var3558 var3558)
(declare-const null-var701 var701)
(declare-const var3579 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var3579 null-String)))
(declare-const var3583 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var3583 null-String)))
(declare-const var3592 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var3592 null-Int)))
(declare-const var3985 var3558) ; Statement: r10 := @parameter3: com.mysql.cj.exceptions.ExceptionInterceptor 
(assert (not (= var3985 null-var3558)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2427 var701) ; Statement: $r2 := @caughtexception 
(assert (not (= var2427 null-var701)))
(define-const var686 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var686)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var686!1 String)
(assert (= var686!1 ""))
(assert true)
(define-const var3032 String (append/672562846 var686!1 "The connection property \u0027")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The connection property \'") 
(declare-const var686!2 String)
(assert (= var686!2 (str.++ var686!1 "The connection property \u0027")))
(assert true)
(define-const var3595 String (append/672562846 var3032 var3579)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var3032!1 String)
(assert (= var3032!1 (str.++ var3032 var3579)))
(assert true)
(define-const var1343 String (append/672562846 var3595 "\u0027 only accepts integer values. The value \u0027")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' only accepts integer values. The value \'") 
(declare-const var3595!1 String)
(assert (= var3595!1 (str.++ var3595 "\u0027 only accepts integer values. The value \u0027")))
(assert true)
(define-const var1543 String (append/672562846 var1343 var3583)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var1343!1 String)
(assert (= var1343!1 (str.++ var1343 var3583)))
(assert true)
(define-const var2882 String (append/672562846 var1543 "\u0027 can not be converted to an integer.")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' can not be converted to an integer.") 
(declare-const var1543!1 String)
(assert (= var1543!1 (str.++ var1543 "\u0027 can not be converted to an integer.")))
(assert true)
(define-const var2318 String (toString/-2075883882 var2882)) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3791 var1729 (var2253_createException/-988168188 var1049!class var2318 var3985)) ; Statement: $r12 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.Class,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>(class "Lcom/mysql/cj/exceptions/WrongArgumentException;", $r11, r10) 
(define-const var1631 var1049 (cast-from-var1729-to-var1049 var3791)) ; Statement: $r13 = (com.mysql.cj.exceptions.WrongArgumentException) $r12 
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2253_createException/-988168188=([java.lang.Class, java.lang.String, com.mysql.cj.exceptions.ExceptionInterceptor], com.mysql.cj.exceptions.CJException), cast-from-var1729-to-var1049=([com.mysql.cj.exceptions.CJException], com.mysql.cj.exceptions.WrongArgumentException)}
; {var3579=r4, var3858=null_type, var3583=r0, var3592=i0, var3558=com.mysql.cj.exceptions.ExceptionInterceptor, var3985=r10, var701=java.lang.NumberFormatException, var2427=$r2, var686=$r3, var3032=$r5, var3595=$r6, var1343=$r7, var1543=$r8, var2882=$r9, var2318=$r11, var1729=com.mysql.cj.exceptions.CJException, var2253=com.mysql.cj.exceptions.ExceptionFactory, var1049=com.mysql.cj.exceptions.WrongArgumentException, var3791=$r12, var1631=$r13}
; {r4=var3579, null_type=var3858, r0=var3583, i0=var3592, com.mysql.cj.exceptions.ExceptionInterceptor=var3558, r10=var3985, java.lang.NumberFormatException=var701, $r2=var2427, $r3=var686, $r5=var3032, $r6=var3595, $r7=var1343, $r8=var1543, $r9=var2882, $r11=var2318, com.mysql.cj.exceptions.CJException=var1729, com.mysql.cj.exceptions.ExceptionFactory=var2253, com.mysql.cj.exceptions.WrongArgumentException=var1049, $r12=var3791, $r13=var1631}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	i0 := @parameter2: int;	r10 := @parameter3: com.mysql.cj.exceptions.ExceptionInterceptor;	$r2 := @caughtexception;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The connection property \'");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' only accepts integer values. The value \'");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' can not be converted to an integer.");	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r12 = staticinvoke <com.mysql.cj.exceptions.ExceptionFactory: com.mysql.cj.exceptions.CJException createException(java.lang.Class,java.lang.String,com.mysql.cj.exceptions.ExceptionInterceptor)>(class "Lcom/mysql/cj/exceptions/WrongArgumentException;", $r11, r10);	$r13 = (com.mysql.cj.exceptions.WrongArgumentException) $r12;	throw $r13
;block_num 2