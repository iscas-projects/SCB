(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3141 0)
(declare-sort var2569 0)
(declare-sort var849 0)
(declare-sort var1068 0)
(declare-sort var1628 0)
(declare-sort var3933 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getString/-1472077954 (var3141 String) String)
(declare-fun var1068-init () var1068)
(declare-fun <init>/-168256201 (var1068 String) void)
(declare-fun locale/-213108074 (var3141) var1628)
(declare-fun setLocale/1398595668 (var1068 var1628) void)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun format/1093389642 (var1068 (Array Int var849) String var3933) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var3141 var3141)
(declare-const null-String String)
(declare-const null-__Array__Int__var849__ (Array Int var849))
(declare-const null-NullType var2569)
(declare-const null-var3933 var3933)
(declare-const var2683 var3141) ; Statement: r0 := @this: org.apache.tomcat.util.res.StringManager 
(assert (not (= var2683 null-var3141)))
(declare-const var2858 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2858 null-String)))
(declare-const var1114 (Array Int var849)) ; Statement: r4 := @parameter1: java.lang.Object[] 
(assert (not (= var1114 null-__Array__Int__var849__)))
(assert true)
(define-const var1544 String (getString/-1472077954 var2683 var2858)) ; Statement: r8 = virtualinvoke r0.<org.apache.tomcat.util.res.StringManager: java.lang.String getString(java.lang.String)>(r1) 
 ; Statement: if r8 != null goto $r2 = new java.text.MessageFormat 
(assert (not (= var1544 null-String))) ; Cond: r8 != null 
(define-const var3966 var1068 var1068-init) ; Statement: $r2 = new java.text.MessageFormat 
(assert true)
;(assert (<init>/-168256201 var3966 var1544)) ; Statement: specialinvoke $r2.<java.text.MessageFormat: void <init>(java.lang.String)>(r8) 

(declare-const var3966!1 var1068)
(declare-const var1544!1 String)
(define-const var3008 var1628 (locale/-213108074 var2683)) ; Statement: $r3 = r0.<org.apache.tomcat.util.res.StringManager: java.util.Locale locale> 
(assert true)
;(assert (setLocale/1398595668 var3966!1 var3008)) ; Statement: virtualinvoke $r2.<java.text.MessageFormat: void setLocale(java.util.Locale)>($r3) 

(declare-const var3966!2 var1068)
(declare-const var3008!1 var1628)
(define-const var3658 String String-init) ; Statement: $r5 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3658)) ; Statement: specialinvoke $r5.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3658!1 String)
(assert true)
(define-const var1070 String (format/1093389642 var3966!2 var1114 var3658!1 null-var3933)) ; Statement: $r6 = virtualinvoke $r2.<java.text.MessageFormat: java.lang.StringBuffer format(java.lang.Object[],java.lang.StringBuffer,java.text.FieldPosition)>(r4, $r5, null) 
(assert true)
(define-const var3869 String (toString/-222306083 var1070)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {getString/-1472077954=([org.apache.tomcat.util.res.StringManager, java.lang.String], java.lang.String), var1068-init=([], java.text.MessageFormat), <init>/-168256201=([java.text.MessageFormat, java.lang.String], void), locale/-213108074=([org.apache.tomcat.util.res.StringManager], java.util.Locale), setLocale/1398595668=([java.text.MessageFormat, java.util.Locale], void), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), format/1093389642=([java.text.MessageFormat, java.lang.Object[], java.lang.StringBuffer, java.text.FieldPosition], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var3141=org.apache.tomcat.util.res.StringManager, var2683=r0, var2858=r1, var2569=null_type, var849=java.lang.Object, var1114=r4, var1544=r8, var1068=java.text.MessageFormat, var3966=$r2, var1628=java.util.Locale, var3008=$r3, var3658=$r5, var3933=java.text.FieldPosition, var1070=$r6, var3869=$r7}
; {org.apache.tomcat.util.res.StringManager=var3141, r0=var2683, r1=var2858, null_type=var2569, java.lang.Object=var849, r4=var1114, r8=var1544, java.text.MessageFormat=var1068, $r2=var3966, java.util.Locale=var1628, $r3=var3008, $r5=var3658, java.text.FieldPosition=var3933, $r6=var1070, $r7=var3869}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.tomcat.util.res.StringManager;	r1 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.Object[];	r8 = virtualinvoke r0.<org.apache.tomcat.util.res.StringManager: java.lang.String getString(java.lang.String)>(r1);	if r8 != null goto $r2 = new java.text.MessageFormat;	$r2 = new java.text.MessageFormat;	specialinvoke $r2.<java.text.MessageFormat: void <init>(java.lang.String)>(r8);	$r3 = r0.<org.apache.tomcat.util.res.StringManager: java.util.Locale locale>;	virtualinvoke $r2.<java.text.MessageFormat: void setLocale(java.util.Locale)>($r3);	$r5 = new java.lang.StringBuffer;	specialinvoke $r5.<java.lang.StringBuffer: void <init>()>();	$r6 = virtualinvoke $r2.<java.text.MessageFormat: java.lang.StringBuffer format(java.lang.Object[],java.lang.StringBuffer,java.text.FieldPosition)>(r4, $r5, null);	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.String toString()>();	return $r7
;block_num 2