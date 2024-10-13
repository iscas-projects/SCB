(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2296 0)
(declare-sort var3814 0)
(declare-sort var1923 0)
(declare-sort var3904 0)
(declare-sort var1913 0)
(declare-sort var3271 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3904-init () var3904)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1913) String)
(declare-fun cast-from-var1923-to-var1913 (var1923) var1913)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1373483697 (var3904 String var3271) void)
(declare-fun cast-from-var1923-to-var3271 (var1923) var3271)
(declare-const null-var2296 var2296)
(declare-const null-var3814 var3814)
(declare-const null-var1923 var1923)
(declare-const var2944 var2296) ; Statement: r0 := @this: org.apache.ibatis.parsing.XPathParser 
(assert (not (= var2944 null-var2296)))
(declare-const var1635 var3814) ; Statement: r4 := @parameter0: org.xml.sax.InputSource 
(assert (not (= var1635 null-var3814)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1275 var1923) ; Statement: $r6 := @caughtexception 
(assert (not (= var1275 null-var1923)))
(define-const var2084 var3904 var3904-init) ; Statement: $r7 = new org.apache.ibatis.builder.BuilderException 
(define-const var657 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var657)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var657!1 String)
(assert (= var657!1 ""))
(assert true)
(define-const var1664 String (append/672562846 var657!1 "Error creating document instance.  Cause: ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error creating document instance.  Cause: ") 
(declare-const var657!2 String)
(assert (= var657!2 (str.++ var657!1 "Error creating document instance.  Cause: ")))
(assert true)
(define-const var1824 String (append/-1031950772 var1664 (cast-from-var1923-to-var1913 var1275))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6) 
(declare-const var1664!1 String)
(assert (str.prefixof var1664 var1664!1))
(assert true)
(define-const var3349 String (toString/-2075883882 var1824)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1373483697 var2084 var3349 (cast-from-var1923-to-var3271 var1275))) ; Statement: specialinvoke $r7.<org.apache.ibatis.builder.BuilderException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r6) 

(declare-const var2084!1 var3904)
(declare-const var3349!1 String)
(declare-const var1275!1 var1923)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var3904-init=([], org.apache.ibatis.builder.BuilderException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1923-to-var1913=([java.lang.Exception], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1373483697=([org.apache.ibatis.builder.BuilderException, java.lang.String, java.lang.Throwable], void), cast-from-var1923-to-var3271=([java.lang.Exception], java.lang.Throwable)}
; {var2296=org.apache.ibatis.parsing.XPathParser, var2944=r0, var3814=org.xml.sax.InputSource, var1635=r4, var1923=java.lang.Exception, var1275=$r6, var3904=org.apache.ibatis.builder.BuilderException, var2084=$r7, var657=$r8, var1664=$r9, var1913=java.lang.Object, var1824=$r10, var3349=$r11, var3271=java.lang.Throwable}
; {org.apache.ibatis.parsing.XPathParser=var2296, r0=var2944, org.xml.sax.InputSource=var3814, r4=var1635, java.lang.Exception=var1923, $r6=var1275, org.apache.ibatis.builder.BuilderException=var3904, $r7=var2084, $r8=var657, $r9=var1664, java.lang.Object=var1913, $r10=var1824, $r11=var3349, java.lang.Throwable=var3271}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.parsing.XPathParser;	r4 := @parameter0: org.xml.sax.InputSource;	$r6 := @caughtexception;	$r7 = new org.apache.ibatis.builder.BuilderException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error creating document instance.  Cause: ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<org.apache.ibatis.builder.BuilderException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r6);	throw $r7
;block_num 2