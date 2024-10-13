(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var127 0)
(declare-sort var929 0)
(declare-sort var2724 0)
(declare-sort var404 0)
(declare-sort var3688 0)
(declare-sort var269 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var404!class ClassObject)
(declare-const var269!class ClassObject)
(declare-fun <init>/1021194697 (var2724 String ClassObject) void)
(declare-fun cast-from-var127-to-var2724 (var127) var2724)
(declare-fun isAssignableFrom/-1028998700 (ClassObject ClassObject) Bool)
(declare-fun var3688-init () var3688)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3688 String) void)
(declare-const null-var127 var127)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const var3914 var127) ; Statement: r0 := @this: freemarker.ext.jsp.SimpleTagDirectiveModel 
(assert (not (= var3914 null-var127)))
(declare-const var3018 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3018 null-String)))
(declare-const var3012 ClassObject) ; Statement: r2 := @parameter1: java.lang.Class 
(assert (not (= var3012 null-ClassObject)))
(assert true)
;(assert (<init>/1021194697 (cast-from-var127-to-var2724 var3914) var3018 var3012)) ; Statement: specialinvoke r0.<freemarker.ext.jsp.JspTagModelBase: void <init>(java.lang.String,java.lang.Class)>(r1, r2) 

(declare-const var3914!1 var127)
(declare-const var3018!1 String)
(declare-const var3012!1 ClassObject)
(define-const var301 ClassObject var404!class) ; Statement: $r3 = class "Ljavax/servlet/jsp/tagext/SimpleTag;" 
(assert true)
(define-const var3800 Bool (isAssignableFrom/-1028998700 var301 var3012!1)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r2) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (not (= (ite var3800 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1022 var3688 var3688-init) ; Statement: $r4 = new java.lang.IllegalArgumentException 
(define-const var3564 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3564)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3564!1 String)
(assert (= var3564!1 ""))
(assert true)
(define-const var3976 String (getName/-1958580599 var3012!1)) ; Statement: $r6 = virtualinvoke r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var290 String (append/672562846 var3564!1 var3976)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var3564!2 String)
(assert (= var3564!2 (str.++ var3564!1 var3976)))
(assert true)
(define-const var2693 String (append/672562846 var290 " does not implement either the ")) ; Statement: $r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not implement either the ") 
(declare-const var290!1 String)
(assert (= var290!1 (str.++ var290 " does not implement either the ")))
(define-const var2824 ClassObject var269!class) ; Statement: $r8 = class "Ljavax/servlet/jsp/tagext/Tag;" 
(assert true)
(define-const var742 String (getName/-1958580599 var2824)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2237 String (append/672562846 var2693 var742)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var2693!1 String)
(assert (= var2693!1 (str.++ var2693 var742)))
(assert true)
(define-const var3053 String (append/672562846 var2237 " interface or the ")) ; Statement: $r14 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" interface or the ") 
(declare-const var2237!1 String)
(assert (= var2237!1 (str.++ var2237 " interface or the ")))
(define-const var2710 ClassObject var404!class) ; Statement: $r12 = class "Ljavax/servlet/jsp/tagext/SimpleTag;" 
(assert true)
(define-const var122 String (getName/-1958580599 var2710)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3846 String (append/672562846 var3053 var122)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var3053!1 String)
(assert (= var3053!1 (str.++ var3053 var122)))
(assert true)
(define-const var3145 String (append/672562846 var3846 " interface.")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" interface.") 
(declare-const var3846!1 String)
(assert (= var3846!1 (str.++ var3846 " interface.")))
(assert true)
(define-const var174 String (toString/-2075883882 var3145)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1022 var174)) ; Statement: specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r17) 

(declare-const var1022!1 var3688)
(declare-const var174!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/1021194697=([freemarker.ext.jsp.JspTagModelBase, java.lang.String, java.lang.Class], void), cast-from-var127-to-var2724=([freemarker.ext.jsp.SimpleTagDirectiveModel], freemarker.ext.jsp.JspTagModelBase), isAssignableFrom/-1028998700=([java.lang.Class, java.lang.Class], boolean), var3688-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var127=freemarker.ext.jsp.SimpleTagDirectiveModel, var3914=r0, var3018=r1, var929=null_type, var3012=r2, var2724=freemarker.ext.jsp.JspTagModelBase, var404=javax.servlet.jsp.tagext.SimpleTag, var301=$r3, var3800=$z0, var3688=java.lang.IllegalArgumentException, var1022=$r4, var3564=$r5, var3976=$r6, var290=$r7, var2693=$r10, var269=javax.servlet.jsp.tagext.Tag, var2824=$r8, var742=$r9, var2237=$r11, var3053=$r14, var2710=$r12, var122=$r13, var3846=$r15, var3145=$r16, var174=$r17}
; {freemarker.ext.jsp.SimpleTagDirectiveModel=var127, r0=var3914, r1=var3018, null_type=var929, r2=var3012, freemarker.ext.jsp.JspTagModelBase=var2724, javax.servlet.jsp.tagext.SimpleTag=var404, $r3=var301, $z0=var3800, java.lang.IllegalArgumentException=var3688, $r4=var1022, $r5=var3564, $r6=var3976, $r7=var290, $r10=var2693, javax.servlet.jsp.tagext.Tag=var269, $r8=var2824, $r9=var742, $r11=var2237, $r14=var3053, $r12=var2710, $r13=var122, $r15=var3846, $r16=var3145, $r17=var174}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.ext.jsp.SimpleTagDirectiveModel;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.Class;	specialinvoke r0.<freemarker.ext.jsp.JspTagModelBase: void <init>(java.lang.String,java.lang.Class)>(r1, r2);	$r3 = class "Ljavax/servlet/jsp/tagext/SimpleTag;";	$z0 = virtualinvoke $r3.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r2);	if $z0 != 0 goto return;	$r4 = new java.lang.IllegalArgumentException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke r2.<java.lang.Class: java.lang.String getName()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" does not implement either the ");	$r8 = class "Ljavax/servlet/jsp/tagext/Tag;";	$r9 = virtualinvoke $r8.<java.lang.Class: java.lang.String getName()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r14 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" interface or the ");	$r12 = class "Ljavax/servlet/jsp/tagext/SimpleTag;";	$r13 = virtualinvoke $r12.<java.lang.Class: java.lang.String getName()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" interface.");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r17);	throw $r4
;block_num 2