(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2113 0)
(declare-sort var3868 0)
(declare-sort var1540 0)
(declare-sort var2580 0)
(declare-sort var612 0)
(declare-sort var1168 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun resolveClass/1510055323 (var2113 String) ClassObject)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun var2580-init () var2580)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var612) String)
(declare-fun cast-from-var1540-to-var612 (var1540) var612)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1373483697 (var2580 String var1168) void)
(declare-fun cast-from-var1540-to-var1168 (var1540) var1168)
(declare-const null-var2113 var2113)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1540 var1540)
(declare-const var158 var2113) ; Statement: r0 := @this: org.apache.ibatis.builder.BaseBuilder 
(assert (not (= var158 null-var2113)))
(declare-const var1031 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1031 null-String)))
(assert true)
(define-const var1336 ClassObject (resolveClass/1510055323 var158 var1031)) ; Statement: r2 = virtualinvoke r0.<org.apache.ibatis.builder.BaseBuilder: java.lang.Class resolveClass(java.lang.String)>(r1) 
 ; Statement: if r2 != null goto $r3 = newarray (java.lang.Class)[0] 
(assert (not (= var1336 null-ClassObject))) ; Cond: r2 != null 
(define-const var2032 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r3 = newarray (java.lang.Class)[0] 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var955 var1540) ; Statement: $r6 := @caughtexception 
(assert (not (= var955 null-var1540)))
(define-const var1301 var2580 var2580-init) ; Statement: $r7 = new org.apache.ibatis.builder.BuilderException 
(define-const var1786 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1786)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1786!1 String)
(assert (= var1786!1 ""))
(assert true)
(define-const var1139 String (append/672562846 var1786!1 "Error creating instance. Cause: ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error creating instance. Cause: ") 
(declare-const var1786!2 String)
(assert (= var1786!2 (str.++ var1786!1 "Error creating instance. Cause: ")))
(assert true)
(define-const var2631 String (append/-1031950772 var1139 (cast-from-var1540-to-var612 var955))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6) 
(declare-const var1139!1 String)
(assert (str.prefixof var1139 var1139!1))
(assert true)
(define-const var937 String (toString/-2075883882 var2631)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1373483697 var1301 var937 (cast-from-var1540-to-var1168 var955))) ; Statement: specialinvoke $r7.<org.apache.ibatis.builder.BuilderException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r6) 

(declare-const var1301!1 var2580)
(declare-const var937!1 String)
(declare-const var955!1 var1540)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {resolveClass/1510055323=([org.apache.ibatis.builder.BaseBuilder, java.lang.String], java.lang.Class), arr-ClassObject-init=([], java.lang.Class[]), var2580-init=([], org.apache.ibatis.builder.BuilderException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1540-to-var612=([java.lang.Exception], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1373483697=([org.apache.ibatis.builder.BuilderException, java.lang.String, java.lang.Throwable], void), cast-from-var1540-to-var1168=([java.lang.Exception], java.lang.Throwable)}
; {var2113=org.apache.ibatis.builder.BaseBuilder, var158=r0, var1031=r1, var3868=null_type, var1336=r2, var2032=$r3, var1540=java.lang.Exception, var955=$r6, var2580=org.apache.ibatis.builder.BuilderException, var1301=$r7, var1786=$r8, var1139=$r9, var612=java.lang.Object, var2631=$r10, var937=$r11, var1168=java.lang.Throwable}
; {org.apache.ibatis.builder.BaseBuilder=var2113, r0=var158, r1=var1031, null_type=var3868, r2=var1336, $r3=var2032, java.lang.Exception=var1540, $r6=var955, org.apache.ibatis.builder.BuilderException=var2580, $r7=var1301, $r8=var1786, $r9=var1139, java.lang.Object=var612, $r10=var2631, $r11=var937, java.lang.Throwable=var1168}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.builder.BaseBuilder;	r1 := @parameter0: java.lang.String;	r2 = virtualinvoke r0.<org.apache.ibatis.builder.BaseBuilder: java.lang.Class resolveClass(java.lang.String)>(r1);	if r2 != null goto $r3 = newarray (java.lang.Class)[0];	$r3 = newarray (java.lang.Class)[0];	$r6 := @caughtexception;	$r7 = new org.apache.ibatis.builder.BuilderException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error creating instance. Cause: ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<org.apache.ibatis.builder.BuilderException: void <init>(java.lang.String,java.lang.Throwable)>($r11, $r6);	throw $r7
;block_num 3