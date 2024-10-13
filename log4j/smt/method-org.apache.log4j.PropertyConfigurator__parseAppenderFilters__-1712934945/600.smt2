(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var841 0)
(declare-sort var3924 0)
(declare-sort var2940 0)
(declare-sort var517 0)
(declare-sort var2931 0)
(declare-sort var3090 0)
(declare-sort var3504 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var2931-init () var2931)
(declare-fun <init>/-849847095 (var2931) void)
(declare-fun keys/-63145882 (var2931) var3090)
(declare-fun cast-from-var3924-to-var2931 (var3924) var2931)
(declare-fun var3090_hasMoreElements/-1180312480 (var3090) Bool)
(declare-fun var3504-init () var3504)
(declare-fun <init>/-1089798126 (var3504 var2931) void)
(declare-fun cast-from-var3504-to-var3090 (var3504) var3090)
(declare-const null-var841 var841)
(declare-const null-var3924 var3924)
(declare-const null-String String)
(declare-const null-var517 var517)
(declare-const var2060 var841) ; Statement: r52 := @this: org.apache.log4j.PropertyConfigurator 
(assert (not (= var2060 null-var841)))
(declare-const var890 var3924) ; Statement: r7 := @parameter0: java.util.Properties 
(assert (not (= var890 null-var3924)))
(declare-const var1421 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1421 null-String)))
(declare-const var1111 var517) ; Statement: r36 := @parameter2: org.apache.log4j.Appender 
(assert (not (= var1111 null-var517)))
(define-const var2719 String String-init) ; Statement: $r61 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2719)) ; Statement: specialinvoke $r61.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2719!1 String)
(assert true)
(define-const var1689 String (append/1560614132 var2719!1 "log4j.appender.")) ; Statement: $r2 = virtualinvoke $r61.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("log4j.appender.") 
(declare-const var2719!2 String)
(assert (str.prefixof var2719!1 var2719!2))
(assert true)
(define-const var3822 String (append/1560614132 var1689 var1421)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1) 
(declare-const var1689!1 String)
(assert (str.prefixof var1689 var1689!1))
(assert true)
(define-const var728 String (append/1560614132 var3822 ".filter.")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".filter.") 
(declare-const var3822!1 String)
(assert (str.prefixof var3822 var3822!1))
(assert true)
(define-const var1460 String (toString/-222306083 var728)) ; Statement: r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
(define-const var3135 Int (length/-134980193 var1460)) ; Statement: i0 = virtualinvoke r5.<java.lang.String: int length()>() 
(define-const var2051 var2931 var2931-init) ; Statement: $r62 = new java.util.Hashtable 
(assert true)
;(assert (<init>/-849847095 var2051)) ; Statement: specialinvoke $r62.<java.util.Hashtable: void <init>()>() 

(declare-const var2051!1 var2931)
(assert true)
(define-const var348 var3090 (keys/-63145882 (cast-from-var3924-to-var2931 var890))) ; Statement: r8 = virtualinvoke r7.<java.util.Properties: java.util.Enumeration keys()>() 
(define-const var277 String "") ; Statement: r53 = "" 
(assert true) ; Non Conditional
(define-const var2925 Bool (var3090_hasMoreElements/-1180312480 var348)) ; Statement: $z0 = interfaceinvoke r8.<java.util.Enumeration: boolean hasMoreElements()>() 
 ; Statement: if $z0 == 0 goto $r65 = new org.apache.log4j.SortedKeyEnumeration 
(assert (= (ite var2925 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2388 var3504 var3504-init) ; Statement: $r65 = new org.apache.log4j.SortedKeyEnumeration 
(assert true)
;(assert (<init>/-1089798126 var2388 var2051!1)) ; Statement: specialinvoke $r65.<org.apache.log4j.SortedKeyEnumeration: void <init>(java.util.Hashtable)>($r62) 

(declare-const var2388!1 var3504)
(declare-const var2051!2 var2931)
(assert true) ; Non Conditional
(define-const var1514 Bool (var3090_hasMoreElements/-1180312480 (cast-from-var3504-to-var3090 var2388!1))) ; Statement: $z1 = interfaceinvoke $r65.<java.util.Enumeration: boolean hasMoreElements()>() 
 ; Statement: if $z1 == 0 goto return 
(assert (= (ite var1514 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), length/-134980193=([java.lang.String], int), var2931-init=([], java.util.Hashtable), <init>/-849847095=([java.util.Hashtable], void), keys/-63145882=([java.util.Hashtable], java.util.Enumeration), cast-from-var3924-to-var2931=([java.util.Properties], java.util.Hashtable), var3090_hasMoreElements/-1180312480=([java.util.Enumeration], boolean), var3504-init=([], org.apache.log4j.SortedKeyEnumeration), <init>/-1089798126=([org.apache.log4j.SortedKeyEnumeration, java.util.Hashtable], void), cast-from-var3504-to-var3090=([org.apache.log4j.SortedKeyEnumeration], java.util.Enumeration)}
; {var841=org.apache.log4j.PropertyConfigurator, var2060=r52, var3924=java.util.Properties, var890=r7, var1421=r1, var2940=null_type, var517=org.apache.log4j.Appender, var1111=r36, var2719=$r61, var1689=$r2, var3822=$r3, var728=$r4, var1460=r5, var3135=i0, var2931=java.util.Hashtable, var2051=$r62, var3090=java.util.Enumeration, var348=r8, var277=r53, var2925=$z0, var3504=org.apache.log4j.SortedKeyEnumeration, var2388=$r65, var1514=$z1}
; {org.apache.log4j.PropertyConfigurator=var841, r52=var2060, java.util.Properties=var3924, r7=var890, r1=var1421, null_type=var2940, org.apache.log4j.Appender=var517, r36=var1111, $r61=var2719, $r2=var1689, $r3=var3822, $r4=var728, r5=var1460, i0=var3135, java.util.Hashtable=var2931, $r62=var2051, java.util.Enumeration=var3090, r8=var348, r53=var277, $z0=var2925, org.apache.log4j.SortedKeyEnumeration=var3504, $r65=var2388, $z1=var1514}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.String: int length()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1,"<java.lang.String: int length()>": 1}
;stmts r52 := @this: org.apache.log4j.PropertyConfigurator;	r7 := @parameter0: java.util.Properties;	r1 := @parameter1: java.lang.String;	r36 := @parameter2: org.apache.log4j.Appender;	$r61 = new java.lang.StringBuffer;	specialinvoke $r61.<java.lang.StringBuffer: void <init>()>();	$r2 = virtualinvoke $r61.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("log4j.appender.");	$r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(".filter.");	r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.String toString()>();	i0 = virtualinvoke r5.<java.lang.String: int length()>();	$r62 = new java.util.Hashtable;	specialinvoke $r62.<java.util.Hashtable: void <init>()>();	r8 = virtualinvoke r7.<java.util.Properties: java.util.Enumeration keys()>();	r53 = "";	$z0 = interfaceinvoke r8.<java.util.Enumeration: boolean hasMoreElements()>();	if $z0 == 0 goto $r65 = new org.apache.log4j.SortedKeyEnumeration;	$r65 = new org.apache.log4j.SortedKeyEnumeration;	specialinvoke $r65.<org.apache.log4j.SortedKeyEnumeration: void <init>(java.util.Hashtable)>($r62);	$z1 = interfaceinvoke $r65.<java.util.Enumeration: boolean hasMoreElements()>();	if $z1 == 0 goto return;	return
;block_num 5