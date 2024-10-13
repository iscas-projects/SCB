(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var99 0)
(declare-sort var1204 0)
(declare-sort var3326 0)
(declare-sort var3012 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-737275706 (var3326 Int Int) void)
(declare-fun cast-from-var99-to-var3326 (var99) var3326)
(declare-fun alreadyLoaded/-1187105021 (var99) Bool)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun var3012-init () var3012)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3012 String) void)
(declare-const null-var99 var99)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var99-GROUP_FILE_EXTENSION String)
(declare-const var3173 var99) ; Statement: r0 := @this: org.stringtemplate.v4.STGroupFile 
(assert (not (= var3173 null-var99)))
(declare-const var2983 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2983 null-String)))
(declare-const var677 Int) ; Statement: c0 := @parameter1: char 
(assert (not (= var677 null-Int)))
(declare-const var2827 Int) ; Statement: c1 := @parameter2: char 
(assert (not (= var2827 null-Int)))
(assert true)
;(assert (<init>/-737275706 (cast-from-var99-to-var3326 var3173) var677 var2827)) ; Statement: specialinvoke r0.<org.stringtemplate.v4.STGroup: void <init>(char,char)>(c0, c1) 

(declare-const var3173!1 var99)
(declare-const var677!1 Int)
(declare-const var2827!1 Int)
(declare-const var3173!2 var99)
(assert (not (= var3173!2 null-var99)))
(assert (= (alreadyLoaded/-1187105021 var3173!2) (ite (= 1 0) true false))) ; Statement: r0.<org.stringtemplate.v4.STGroupFile: boolean alreadyLoaded> = 0 
(define-const var1964 String var99-GROUP_FILE_EXTENSION) ; Statement: $r2 = <org.stringtemplate.v4.STGroupFile: java.lang.String GROUP_FILE_EXTENSION> 
(assert true)
(define-const var422 Bool (endsWith/985337093 var2983 var1964)) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean endsWith(java.lang.String)>($r2) 
 ; Statement: if $z0 != 0 goto $r3 = new java.io.File 
(assert (not (not (= (ite var422 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1802 var3012 var3012-init) ; Statement: $r29 = new java.lang.IllegalArgumentException 
(define-const var368 String String-init) ; Statement: $r30 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var368)) ; Statement: specialinvoke $r30.<java.lang.StringBuilder: void <init>()>() 
(declare-const var368!1 String)
(assert (= var368!1 ""))
(assert true)
(define-const var2095 String (append/672562846 var368!1 "Group file names must end in .stg: ")) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Group file names must end in .stg: ") 
(declare-const var368!2 String)
(assert (= var368!2 (str.++ var368!1 "Group file names must end in .stg: ")))
(assert true)
(define-const var2086 String (append/672562846 var2095 var2983)) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2095!1 String)
(assert (= var2095!1 (str.++ var2095 var2983)))
(assert true)
(define-const var95 String (toString/-2075883882 var2086)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1802 var95)) ; Statement: specialinvoke $r29.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r33) 

(declare-const var1802!1 var3012)
(declare-const var95!1 String)
 ; Statement: throw $r29 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-737275706=([org.stringtemplate.v4.STGroup, char, char], void), cast-from-var99-to-var3326=([org.stringtemplate.v4.STGroupFile], org.stringtemplate.v4.STGroup), alreadyLoaded/-1187105021=([org.stringtemplate.v4.STGroupFile], boolean), endsWith/985337093=([java.lang.String, java.lang.String], boolean), var3012-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var99=org.stringtemplate.v4.STGroupFile, var3173=r0, var2983=r1, var1204=null_type, var677=c0, var2827=c1, var3326=org.stringtemplate.v4.STGroup, var1964=$r2, var422=$z0, var3012=java.lang.IllegalArgumentException, var1802=$r29, var368=$r30, var2095=$r31, var2086=$r32, var95=$r33}
; {org.stringtemplate.v4.STGroupFile=var99, r0=var3173, r1=var2983, null_type=var1204, c0=var677, c1=var2827, org.stringtemplate.v4.STGroup=var3326, $r2=var1964, $z0=var422, java.lang.IllegalArgumentException=var3012, $r29=var1802, $r30=var368, $r31=var2095, $r32=var2086, $r33=var95}
;seq <java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.stringtemplate.v4.STGroupFile;	r1 := @parameter0: java.lang.String;	c0 := @parameter1: char;	c1 := @parameter2: char;	specialinvoke r0.<org.stringtemplate.v4.STGroup: void <init>(char,char)>(c0, c1);	r0.<org.stringtemplate.v4.STGroupFile: boolean alreadyLoaded> = 0;	$r2 = <org.stringtemplate.v4.STGroupFile: java.lang.String GROUP_FILE_EXTENSION>;	$z0 = virtualinvoke r1.<java.lang.String: boolean endsWith(java.lang.String)>($r2);	if $z0 != 0 goto $r3 = new java.io.File;	$r29 = new java.lang.IllegalArgumentException;	$r30 = new java.lang.StringBuilder;	specialinvoke $r30.<java.lang.StringBuilder: void <init>()>();	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Group file names must end in .stg: ");	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r29.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r33);	throw $r29
;block_num 2