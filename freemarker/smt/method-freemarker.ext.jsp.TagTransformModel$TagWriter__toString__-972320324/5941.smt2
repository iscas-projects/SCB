(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var283 0)
(declare-sort var627 0)
(declare-sort var336 0)
(declare-sort var2250 0)
(declare-sort var3067 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun tag/-1520845788 (var283) var627)
(declare-fun getClass/1258963082 (var336) ClassObject)
(declare-fun cast-from-var627-to-var336 (var627) var336)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun getEnclosingWriter/2122993068 (var3067) var2250)
(declare-fun cast-from-var283-to-var3067 (var283) var3067)
(declare-fun toString/-522406933 (var336) String)
(declare-fun cast-from-var2250-to-var336 (var2250) var336)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var283 var283)
(declare-const var3404 var283) ; Statement: r1 := @this: freemarker.ext.jsp.TagTransformModel$TagWriter 
(assert (not (= var3404 null-var283)))
(define-const var50 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var50)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var50!1 String)
(assert (= var50!1 ""))
(assert true)
(define-const var49 String (append/672562846 var50!1 "TagWriter for ")) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("TagWriter for ") 
(declare-const var50!2 String)
(assert (= var50!2 (str.++ var50!1 "TagWriter for ")))
(define-const var2821 var627 (tag/-1520845788 var3404)) ; Statement: $r2 = r1.<freemarker.ext.jsp.TagTransformModel$TagWriter: javax.servlet.jsp.tagext.Tag tag> 
(assert true)
(define-const var959 ClassObject (getClass/1258963082 (cast-from-var627-to-var336 var2821))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2844 String (getName/-1958580599 var959)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3668 String (append/672562846 var49 var2844)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var49!1 String)
(assert (= var49!1 (str.++ var49 var2844)))
(assert true)
(define-const var3694 String (append/672562846 var3668 " wrapping a ")) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" wrapping a ") 
(declare-const var3668!1 String)
(assert (= var3668!1 (str.++ var3668 " wrapping a ")))
(assert true)
(define-const var2070 var2250 (getEnclosingWriter/2122993068 (cast-from-var283-to-var3067 var3404))) ; Statement: $r7 = virtualinvoke r1.<freemarker.ext.jsp.TagTransformModel$TagWriter: javax.servlet.jsp.JspWriter getEnclosingWriter()>() 
(assert true)
(define-const var2668 String (toString/-522406933 (cast-from-var2250-to-var336 var2070))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var3843 String (append/672562846 var3694 var2668)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var3694!1 String)
(assert (= var3694!1 (str.++ var3694 var2668)))
(assert true)
(define-const var2813 String (toString/-2075883882 var3843)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), tag/-1520845788=([freemarker.ext.jsp.TagTransformModel$TagWriter], javax.servlet.jsp.tagext.Tag), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var627-to-var336=([javax.servlet.jsp.tagext.Tag], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), getEnclosingWriter/2122993068=([javax.servlet.jsp.tagext.BodyContent], javax.servlet.jsp.JspWriter), cast-from-var283-to-var3067=([freemarker.ext.jsp.TagTransformModel$TagWriter], javax.servlet.jsp.tagext.BodyContent), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var2250-to-var336=([javax.servlet.jsp.JspWriter], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var283=freemarker.ext.jsp.TagTransformModel$TagWriter, var3404=r1, var50=$r0, var49=$r5, var627=javax.servlet.jsp.tagext.Tag, var2821=$r2, var336=java.lang.Object, var959=$r3, var2844=$r4, var3668=$r6, var3694=$r9, var2250=javax.servlet.jsp.JspWriter, var3067=javax.servlet.jsp.tagext.BodyContent, var2070=$r7, var2668=$r8, var3843=$r10, var2813=$r11}
; {freemarker.ext.jsp.TagTransformModel$TagWriter=var283, r1=var3404, $r0=var50, $r5=var49, javax.servlet.jsp.tagext.Tag=var627, $r2=var2821, java.lang.Object=var336, $r3=var959, $r4=var2844, $r6=var3668, $r9=var3694, javax.servlet.jsp.JspWriter=var2250, javax.servlet.jsp.tagext.BodyContent=var3067, $r7=var2070, $r8=var2668, $r10=var3843, $r11=var2813}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.ext.jsp.TagTransformModel$TagWriter;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("TagWriter for ");	$r2 = r1.<freemarker.ext.jsp.TagTransformModel$TagWriter: javax.servlet.jsp.tagext.Tag tag>;	$r3 = virtualinvoke $r2.<java.lang.Object: java.lang.Class getClass()>();	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" wrapping a ");	$r7 = virtualinvoke r1.<freemarker.ext.jsp.TagTransformModel$TagWriter: javax.servlet.jsp.JspWriter getEnclosingWriter()>();	$r8 = virtualinvoke $r7.<java.lang.Object: java.lang.String toString()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 1