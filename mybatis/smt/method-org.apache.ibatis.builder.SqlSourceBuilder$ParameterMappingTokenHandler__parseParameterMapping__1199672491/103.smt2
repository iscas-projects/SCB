(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2949 0)
(declare-sort var294 0)
(declare-sort var726 0)
(declare-sort var3266 0)
(declare-sort var3304 0)
(declare-sort var1235 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var726-init () var726)
(declare-fun var3304-init () var3304)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1373483697 (var3304 String var1235) void)
(declare-fun cast-from-var3266-to-var1235 (var3266) var1235)
(declare-const null-var2949 var2949)
(declare-const null-String String)
(declare-const null-var3266 var3266)
(declare-const var310 var2949) ; Statement: r10 := @this: org.apache.ibatis.builder.SqlSourceBuilder$ParameterMappingTokenHandler 
(assert (not (= var310 null-var2949)))
(declare-const var2989 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2989 null-String)))
(define-const var385 var726 var726-init) ; Statement: $r0 = new org.apache.ibatis.builder.ParameterExpression 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1433 var3266) ; Statement: $r2 := @caughtexception 
(assert (not (= var1433 null-var3266)))
(define-const var3496 var3304 var3304-init) ; Statement: $r3 = new org.apache.ibatis.builder.BuilderException 
(define-const var1509 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1509)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1509!1 String)
(assert (= var1509!1 ""))
(assert true)
(define-const var798 String (append/672562846 var1509!1 "Parsing error was found in mapping #{")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Parsing error was found in mapping #{") 
(declare-const var1509!2 String)
(assert (= var1509!2 (str.++ var1509!1 "Parsing error was found in mapping #{")))
(assert true)
(define-const var2552 String (append/672562846 var798 var2989)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var798!1 String)
(assert (= var798!1 (str.++ var798 var2989)))
(assert true)
(define-const var1013 String (append/672562846 var2552 "}.  Check syntax #{property|(expression), var1=value1, var2=value2, ...} ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}.  Check syntax #{property|(expression), var1=value1, var2=value2, ...} ") 
(declare-const var2552!1 String)
(assert (= var2552!1 (str.++ var2552 "}.  Check syntax #{property|(expression), var1=value1, var2=value2, ...} ")))
(assert true)
(define-const var587 String (toString/-2075883882 var1013)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1373483697 var3496 var587 (cast-from-var3266-to-var1235 var1433))) ; Statement: specialinvoke $r3.<org.apache.ibatis.builder.BuilderException: void <init>(java.lang.String,java.lang.Throwable)>($r8, $r2) 

(declare-const var3496!1 var3304)
(declare-const var587!1 String)
(declare-const var1433!1 var3266)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var726-init=([], org.apache.ibatis.builder.ParameterExpression), var3304-init=([], org.apache.ibatis.builder.BuilderException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1373483697=([org.apache.ibatis.builder.BuilderException, java.lang.String, java.lang.Throwable], void), cast-from-var3266-to-var1235=([java.lang.Exception], java.lang.Throwable)}
; {var2949=org.apache.ibatis.builder.SqlSourceBuilder$ParameterMappingTokenHandler, var310=r10, var2989=r1, var294=null_type, var726=org.apache.ibatis.builder.ParameterExpression, var385=$r0, var3266=java.lang.Exception, var1433=$r2, var3304=org.apache.ibatis.builder.BuilderException, var3496=$r3, var1509=$r4, var798=$r5, var2552=$r6, var1013=$r7, var587=$r8, var1235=java.lang.Throwable}
; {org.apache.ibatis.builder.SqlSourceBuilder$ParameterMappingTokenHandler=var2949, r10=var310, r1=var2989, null_type=var294, org.apache.ibatis.builder.ParameterExpression=var726, $r0=var385, java.lang.Exception=var3266, $r2=var1433, org.apache.ibatis.builder.BuilderException=var3304, $r3=var3496, $r4=var1509, $r5=var798, $r6=var2552, $r7=var1013, $r8=var587, java.lang.Throwable=var1235}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r10 := @this: org.apache.ibatis.builder.SqlSourceBuilder$ParameterMappingTokenHandler;	r1 := @parameter0: java.lang.String;	$r0 = new org.apache.ibatis.builder.ParameterExpression;	$r2 := @caughtexception;	$r3 = new org.apache.ibatis.builder.BuilderException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Parsing error was found in mapping #{");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}.  Check syntax #{property|(expression), var1=value1, var2=value2, ...} ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<org.apache.ibatis.builder.BuilderException: void <init>(java.lang.String,java.lang.Throwable)>($r8, $r2);	throw $r3
;block_num 2