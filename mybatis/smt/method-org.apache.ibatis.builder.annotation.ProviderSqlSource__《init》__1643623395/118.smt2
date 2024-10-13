(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2858 0)
(declare-sort var2945 0)
(declare-sort var2534 0)
(declare-sort var255 0)
(declare-sort var1632 0)
(declare-sort var773 0)
(declare-sort var3183 0)
(declare-sort var2017 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1632) void)
(declare-fun cast-from-var2858-to-var1632 (var2858) var1632)
(declare-fun var3183-init () var3183)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1632) String)
(declare-fun cast-from-var773-to-var1632 (var773) var1632)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1373483697 (var3183 String var2017) void)
(declare-fun cast-from-var773-to-var2017 (var773) var2017)
(declare-const null-var2858 var2858)
(declare-const null-var2945 var2945)
(declare-const null-var2534 var2534)
(declare-const null-ClassObject ClassObject)
(declare-const null-var255 var255)
(declare-const null-var773 var773)
(declare-const var1897 var2858) ; Statement: r0 := @this: org.apache.ibatis.builder.annotation.ProviderSqlSource 
(assert (not (= var1897 null-var2858)))
(declare-const var1236 var2945) ; Statement: r1 := @parameter0: org.apache.ibatis.session.Configuration 
(assert (not (= var1236 null-var2945)))
(declare-const var557 var2534) ; Statement: r5 := @parameter1: java.lang.annotation.Annotation 
(assert (not (= var557 null-var2534)))
(declare-const var2968 ClassObject) ; Statement: r20 := @parameter2: java.lang.Class 
(assert (not (= var2968 null-ClassObject)))
(declare-const var787 var255) ; Statement: r2 := @parameter3: java.lang.reflect.Method 
(assert (not (= var787 null-var255)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var2858-to-var1632 var1897))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1897!1 var2858)
(define-const var3221 var255 null-var255) ; Statement: r78 = null 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2583 var773) ; Statement: $r71 := @caughtexception 
(assert (not (= var2583 null-var773)))
(define-const var2503 var3183 var3183-init) ; Statement: $r72 = new org.apache.ibatis.builder.BuilderException 
(define-const var1641 String String-init) ; Statement: $r73 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1641)) ; Statement: specialinvoke $r73.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1641!1 String)
(assert (= var1641!1 ""))
(assert true)
(define-const var1940 String (append/672562846 var1641!1 "Error creating SqlSource for SqlProvider.  Cause: ")) ; Statement: $r74 = virtualinvoke $r73.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error creating SqlSource for SqlProvider.  Cause: ") 
(declare-const var1641!2 String)
(assert (= var1641!2 (str.++ var1641!1 "Error creating SqlSource for SqlProvider.  Cause: ")))
(assert true)
(define-const var3816 String (append/-1031950772 var1940 (cast-from-var773-to-var1632 var2583))) ; Statement: $r75 = virtualinvoke $r74.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r71) 
(declare-const var1940!1 String)
(assert (str.prefixof var1940 var1940!1))
(assert true)
(define-const var2448 String (toString/-2075883882 var3816)) ; Statement: $r76 = virtualinvoke $r75.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1373483697 var2503 var2448 (cast-from-var773-to-var2017 var2583))) ; Statement: specialinvoke $r72.<org.apache.ibatis.builder.BuilderException: void <init>(java.lang.String,java.lang.Throwable)>($r76, $r71) 

(declare-const var2503!1 var3183)
(declare-const var2448!1 String)
(declare-const var2583!1 var773)
 ; Statement: throw $r72 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var2858-to-var1632=([org.apache.ibatis.builder.annotation.ProviderSqlSource], java.lang.Object), var3183-init=([], org.apache.ibatis.builder.BuilderException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var773-to-var1632=([java.lang.Exception], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1373483697=([org.apache.ibatis.builder.BuilderException, java.lang.String, java.lang.Throwable], void), cast-from-var773-to-var2017=([java.lang.Exception], java.lang.Throwable)}
; {var2858=org.apache.ibatis.builder.annotation.ProviderSqlSource, var1897=r0, var2945=org.apache.ibatis.session.Configuration, var1236=r1, var2534=java.lang.annotation.Annotation, var557=r5, var2968=r20, var255=java.lang.reflect.Method, var787=r2, var1632=java.lang.Object, var3221=r78, var773=java.lang.Exception, var2583=$r71, var3183=org.apache.ibatis.builder.BuilderException, var2503=$r72, var1641=$r73, var1940=$r74, var3816=$r75, var2448=$r76, var2017=java.lang.Throwable}
; {org.apache.ibatis.builder.annotation.ProviderSqlSource=var2858, r0=var1897, org.apache.ibatis.session.Configuration=var2945, r1=var1236, java.lang.annotation.Annotation=var2534, r5=var557, r20=var2968, java.lang.reflect.Method=var255, r2=var787, java.lang.Object=var1632, r78=var3221, java.lang.Exception=var773, $r71=var2583, org.apache.ibatis.builder.BuilderException=var3183, $r72=var2503, $r73=var1641, $r74=var1940, $r75=var3816, $r76=var2448, java.lang.Throwable=var2017}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.builder.annotation.ProviderSqlSource;	r1 := @parameter0: org.apache.ibatis.session.Configuration;	r5 := @parameter1: java.lang.annotation.Annotation;	r20 := @parameter2: java.lang.Class;	r2 := @parameter3: java.lang.reflect.Method;	specialinvoke r0.<java.lang.Object: void <init>()>();	r78 = null;	$r71 := @caughtexception;	$r72 = new org.apache.ibatis.builder.BuilderException;	$r73 = new java.lang.StringBuilder;	specialinvoke $r73.<java.lang.StringBuilder: void <init>()>();	$r74 = virtualinvoke $r73.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error creating SqlSource for SqlProvider.  Cause: ");	$r75 = virtualinvoke $r74.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r71);	$r76 = virtualinvoke $r75.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r72.<org.apache.ibatis.builder.BuilderException: void <init>(java.lang.String,java.lang.Throwable)>($r76, $r71);	throw $r72
;block_num 2