(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3531 0)
(declare-sort var642 0)
(declare-sort var1684 0)
(declare-sort var748 0)
(declare-sort var3887 0)
(declare-sort var3631 0)
(declare-sort var854 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1684-init () var1684)
(declare-fun <init>/964458484 (var1684) void)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var748 String Int) void)
(declare-fun cast-from-var3531-to-var748 (var3531) var748)
(declare-fun var3887_getRuntime/1249267505 () var3887)
(declare-fun availableProcessors/-1553127534 (var3887) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun put/1981026245 (var3631 var854 var854) var854)
(declare-fun cast-from-var1684-to-var3631 (var1684) var3631)
(declare-fun cast-from-String-to-var854 (String) var854)
(declare-fun freeMemory/1964097530 (var3887) Int)
(declare-fun String_valueOf/-107395227 (Int) String)
(declare-fun maxMemory/1135739438 (var3887) Int)
(declare-fun totalMemory/-606330162 (var3887) Int)
(declare-fun addProperties/2145264245 (var3531 var1684) void)
(declare-const null-var3531 var3531)
(declare-const null-String String)
(declare-const var195 var3531) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property 
(assert (not (= var195 null-var3531)))
(declare-const var3539 String) ; Statement: r30 := @parameter0: java.lang.String 
(assert (not (= var3539 null-String)))
(define-const var209 var1684 var1684-init) ; Statement: $r0 = new java.util.Properties 
(assert true)
;(assert (<init>/964458484 var209)) ; Statement: specialinvoke $r0.<java.util.Properties: void <init>()>() 

(declare-const var209!1 var1684)
(assert true)
(define-const var1073 Bool (endsWith/985337093 var3539 ".")) ; Statement: $z0 = virtualinvoke r30.<java.lang.String: boolean endsWith(java.lang.String)>(".") 
 ; Statement: if $z0 != 0 goto $r2 = new java.lang.StringBuilder 
(assert (not (= (ite var1073 1 0) 0))) ; Cond: $z0 != 0 
(define-const var21 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var21)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var21!1 String)
(assert (= var21!1 ""))
(assert true)
(define-const var1225 String (append/672562846 var21!1 "Loading Runtime properties ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Loading Runtime properties ") 
(declare-const var21!2 String)
(assert (= var21!2 (str.++ var21!1 "Loading Runtime properties ")))
(assert true)
(define-const var3830 String (append/672562846 var1225 var3539)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r30) 
(declare-const var1225!1 String)
(assert (= var1225!1 (str.++ var1225 var3539)))
(assert true)
(define-const var3203 String (toString/-2075883882 var3830)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var3531-to-var748 var195) var3203 3)) ; Statement: virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property: void log(java.lang.String,int)>($r5, 3) 

(declare-const var195!1 var3531)
(declare-const var3203!1 String)
(declare-const var2883 Int)
(define-const var3262 var3887 var3887_getRuntime/1249267505) ; Statement: $r29 = staticinvoke <java.lang.Runtime: java.lang.Runtime getRuntime()>() 
(define-const var2460 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2460)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2460!1 String)
(assert (= var2460!1 ""))
(assert true)
(define-const var548 String (append/672562846 var2460!1 var3539)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r30) 
(declare-const var2460!2 String)
(assert (= var2460!2 (str.++ var2460!1 var3539)))
(assert true)
(define-const var2198 String (append/672562846 var548 "availableProcessors")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("availableProcessors") 
(declare-const var548!1 String)
(assert (= var548!1 (str.++ var548 "availableProcessors")))
(assert true)
(define-const var3702 String (toString/-2075883882 var2198)) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2994 Int (availableProcessors/-1553127534 var3262)) ; Statement: $i0 = virtualinvoke $r29.<java.lang.Runtime: int availableProcessors()>() 
(define-const var760 String (String_valueOf/1240665136 var2994)) ; Statement: $r9 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0) 
(assert true)
;(assert (put/1981026245 (cast-from-var1684-to-var3631 var209!1) (cast-from-String-to-var854 var3702) (cast-from-String-to-var854 var760))) ; Statement: virtualinvoke $r0.<java.util.Properties: java.lang.Object put(java.lang.Object,java.lang.Object)>($r10, $r9) 

(declare-const var209!2 var1684)
(declare-const var3702!1 String)
(declare-const var760!1 String)
(define-const var1752 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1752)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1752!1 String)
(assert (= var1752!1 ""))
(assert true)
(define-const var1627 String (append/672562846 var1752!1 var3539)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r30) 
(declare-const var1752!2 String)
(assert (= var1752!2 (str.++ var1752!1 var3539)))
(assert true)
(define-const var3424 String (append/672562846 var1627 "freeMemory")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("freeMemory") 
(declare-const var1627!1 String)
(assert (= var1627!1 (str.++ var1627 "freeMemory")))
(assert true)
(define-const var2600 String (toString/-2075883882 var3424)) ; Statement: $r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2629 Int (freeMemory/1964097530 var3262)) ; Statement: $l1 = virtualinvoke $r29.<java.lang.Runtime: long freeMemory()>() 
(define-const var23 String (String_valueOf/-107395227 var2629)) ; Statement: $r14 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>($l1) 
(assert true)
;(assert (put/1981026245 (cast-from-var1684-to-var3631 var209!2) (cast-from-String-to-var854 var2600) (cast-from-String-to-var854 var23))) ; Statement: virtualinvoke $r0.<java.util.Properties: java.lang.Object put(java.lang.Object,java.lang.Object)>($r15, $r14) 

(declare-const var209!3 var1684)
(declare-const var2600!1 String)
(declare-const var23!1 String)
(define-const var775 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var775)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var775!1 String)
(assert (= var775!1 ""))
(assert true)
(define-const var3433 String (append/672562846 var775!1 var3539)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r30) 
(declare-const var775!2 String)
(assert (= var775!2 (str.++ var775!1 var3539)))
(assert true)
(define-const var3878 String (append/672562846 var3433 "maxMemory")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("maxMemory") 
(declare-const var3433!1 String)
(assert (= var3433!1 (str.++ var3433 "maxMemory")))
(assert true)
(define-const var51 String (toString/-2075883882 var3878)) ; Statement: $r20 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1882 Int (maxMemory/1135739438 var3262)) ; Statement: $l2 = virtualinvoke $r29.<java.lang.Runtime: long maxMemory()>() 
(define-const var3846 String (String_valueOf/-107395227 var1882)) ; Statement: $r19 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>($l2) 
(assert true)
;(assert (put/1981026245 (cast-from-var1684-to-var3631 var209!3) (cast-from-String-to-var854 var51) (cast-from-String-to-var854 var3846))) ; Statement: virtualinvoke $r0.<java.util.Properties: java.lang.Object put(java.lang.Object,java.lang.Object)>($r20, $r19) 

(declare-const var209!4 var1684)
(declare-const var51!1 String)
(declare-const var3846!1 String)
(define-const var1003 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1003)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1003!1 String)
(assert (= var1003!1 ""))
(assert true)
(define-const var3319 String (append/672562846 var1003!1 var3539)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r30) 
(declare-const var1003!2 String)
(assert (= var1003!2 (str.++ var1003!1 var3539)))
(assert true)
(define-const var3568 String (append/672562846 var3319 "totalMemory")) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("totalMemory") 
(declare-const var3319!1 String)
(assert (= var3319!1 (str.++ var3319 "totalMemory")))
(assert true)
(define-const var550 String (toString/-2075883882 var3568)) ; Statement: $r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1329 Int (totalMemory/-606330162 var3262)) ; Statement: $l3 = virtualinvoke $r29.<java.lang.Runtime: long totalMemory()>() 
(define-const var1910 String (String_valueOf/-107395227 var1329)) ; Statement: $r24 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>($l3) 
(assert true)
;(assert (put/1981026245 (cast-from-var1684-to-var3631 var209!4) (cast-from-String-to-var854 var550) (cast-from-String-to-var854 var1910))) ; Statement: virtualinvoke $r0.<java.util.Properties: java.lang.Object put(java.lang.Object,java.lang.Object)>($r25, $r24) 

(declare-const var209!5 var1684)
(declare-const var550!1 String)
(declare-const var1910!1 String)
(assert true)
;(assert (addProperties/2145264245 var195!1 var209!5)) ; Statement: virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property: void addProperties(java.util.Properties)>($r0) 

(declare-const var195!2 var3531)
(declare-const var209!6 var1684)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1684-init=([], java.util.Properties), <init>/964458484=([java.util.Properties], void), endsWith/985337093=([java.lang.String, java.lang.String], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var3531-to-var748=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), var3887_getRuntime/1249267505=([], java.lang.Runtime), availableProcessors/-1553127534=([java.lang.Runtime], int), String_valueOf/1240665136=([int], java.lang.String), put/1981026245=([java.util.Hashtable, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var1684-to-var3631=([java.util.Properties], java.util.Hashtable), cast-from-String-to-var854=([java.lang.String], java.lang.Object), freeMemory/1964097530=([java.lang.Runtime], long), String_valueOf/-107395227=([long], java.lang.String), maxMemory/1135739438=([java.lang.Runtime], long), totalMemory/-606330162=([java.lang.Runtime], long), addProperties/2145264245=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property, java.util.Properties], void)}
; {var3531=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property, var195=r1, var3539=r30, var642=null_type, var1684=java.util.Properties, var209=$r0, var1073=$z0, var21=$r2, var1225=$r3, var3830=$r4, var3203=$r5, var748=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var2883=3, var3887=java.lang.Runtime, var3262=$r29, var2460=$r6, var548=$r7, var2198=$r8, var3702=$r10, var2994=$i0, var760=$r9, var3631=java.util.Hashtable, var854=java.lang.Object, var1752=$r11, var1627=$r12, var3424=$r13, var2600=$r15, var2629=$l1, var23=$r14, var775=$r16, var3433=$r17, var3878=$r18, var51=$r20, var1882=$l2, var3846=$r19, var1003=$r21, var3319=$r22, var3568=$r23, var550=$r25, var1329=$l3, var1910=$r24}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property=var3531, r1=var195, r30=var3539, null_type=var642, java.util.Properties=var1684, $r0=var209, $z0=var1073, $r2=var21, $r3=var1225, $r4=var3830, $r5=var3203, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var748, 3=var2883, java.lang.Runtime=var3887, $r29=var3262, $r6=var2460, $r7=var548, $r8=var2198, $r10=var3702, $i0=var2994, $r9=var760, java.util.Hashtable=var3631, java.lang.Object=var854, $r11=var1752, $r12=var1627, $r13=var3424, $r15=var2600, $l1=var2629, $r14=var23, $r16=var775, $r17=var3433, $r18=var3878, $r20=var51, $l2=var1882, $r19=var3846, $r21=var1003, $r22=var3319, $r23=var3568, $r25=var550, $l3=var1329, $r24=var1910}
;seq <java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String valueOf(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String valueOf(long)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String valueOf(long)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String valueOf(long)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.StringBuilder: void <init>()>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 10,"<java.lang.StringBuilder: java.lang.String toString()>": 5,"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.String: java.lang.String valueOf(long)>": 3}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property;	r30 := @parameter0: java.lang.String;	$r0 = new java.util.Properties;	specialinvoke $r0.<java.util.Properties: void <init>()>();	$z0 = virtualinvoke r30.<java.lang.String: boolean endsWith(java.lang.String)>(".");	if $z0 != 0 goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Loading Runtime properties ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r30);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property: void log(java.lang.String,int)>($r5, 3);	$r29 = staticinvoke <java.lang.Runtime: java.lang.Runtime getRuntime()>();	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r30);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("availableProcessors");	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$i0 = virtualinvoke $r29.<java.lang.Runtime: int availableProcessors()>();	$r9 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i0);	virtualinvoke $r0.<java.util.Properties: java.lang.Object put(java.lang.Object,java.lang.Object)>($r10, $r9);	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r30);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("freeMemory");	$r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$l1 = virtualinvoke $r29.<java.lang.Runtime: long freeMemory()>();	$r14 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>($l1);	virtualinvoke $r0.<java.util.Properties: java.lang.Object put(java.lang.Object,java.lang.Object)>($r15, $r14);	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r30);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("maxMemory");	$r20 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	$l2 = virtualinvoke $r29.<java.lang.Runtime: long maxMemory()>();	$r19 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>($l2);	virtualinvoke $r0.<java.util.Properties: java.lang.Object put(java.lang.Object,java.lang.Object)>($r20, $r19);	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r30);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("totalMemory");	$r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	$l3 = virtualinvoke $r29.<java.lang.Runtime: long totalMemory()>();	$r24 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>($l3);	virtualinvoke $r0.<java.util.Properties: java.lang.Object put(java.lang.Object,java.lang.Object)>($r25, $r24);	virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property: void addProperties(java.util.Properties)>($r0);	return
;block_num 2