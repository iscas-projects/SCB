(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1841 0)
(declare-sort var342 0)
(declare-sort var1400 0)
(declare-sort var2155 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun indexOf/1795197748 ((s String) (subs String) (fromIndex Int)) Int (str.indexof s subs fromIndex))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun indexOf/1426977840 ((s String) (c Int) (fromIndex Int)) Int (str.indexof s (str.from_code c) fromIndex))
(declare-fun var2155-init () var2155)
(declare-fun append/1183289509 (String Int) String)
(declare-fun append/1845021834 (String Int) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun <init>/875830710 (var2155 String) void)
(declare-const null-String String)
(declare-const null-var342 var342)
(declare-const var1400-DELIM_START String)
(declare-const var1400-DELIM_STOP Int)
(declare-const var3267 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3267 null-String)))
(declare-const var645 var342) ; Statement: r5 := @parameter1: java.util.Properties 
(assert (not (= var645 null-var342)))
(define-const var2839 String String-init) ; Statement: $r18 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2839)) ; Statement: specialinvoke $r18.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2839!1 String)
(define-const var3760 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
(define-const var1546 String var1400-DELIM_START) ; Statement: $r2 = <org.apache.log4j.helpers.OptionConverter: java.lang.String DELIM_START> 
(assert true)
(define-const var1180 Int (indexOf/1795197748 var3267 var1546 var3760)) ; Statement: $i4 = virtualinvoke r1.<java.lang.String: int indexOf(java.lang.String,int)>($r2, i6) 
(define-const var2468 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i9 = (int) -1 
 ; Statement: if $i4 != $i9 goto $r3 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(i6, $i4) 
(assert (not (= var1180 var2468))) ; Cond: $i4 != $i9 
(assert (and true (and (>= var3760 0) (>= (str.len var3267) var1180) (>= var1180 var3760))))
(define-const var3440 String (substring/-1240304868 var3267 var3760 var1180)) ; Statement: $r3 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(i6, $i4) 
(assert true)
;(assert (append/1560614132 var2839!1 var3440)) ; Statement: virtualinvoke $r18.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3) 
(declare-const var2839!2 String)
(assert (str.prefixof var2839!1 var2839!2))
(define-const var3779 Int var1400-DELIM_STOP) ; Statement: $c0 = <org.apache.log4j.helpers.OptionConverter: char DELIM_STOP> 
(define-const var16 Int (cast-from-Int-to-Int var3779)) ; Statement: $i10 = (int) $c0 
(assert true)
(define-const var1045 Int (indexOf/1426977840 var3267 var16 var1180)) ; Statement: i1 = virtualinvoke r1.<java.lang.String: int indexOf(int,int)>($i10, $i4) 
(define-const var827 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i12 = (int) -1 
 ; Statement: if i1 != $i12 goto $i2 = <org.apache.log4j.helpers.OptionConverter: int DELIM_START_LEN> 
(assert (not (not (= var1045 var827)))) ; Negate: Cond: i1 != $i12  
(define-const var1314 var2155 var2155-init) ; Statement: $r20 = new java.lang.IllegalArgumentException 
(define-const var634 String String-init) ; Statement: $r19 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var634)) ; Statement: specialinvoke $r19.<java.lang.StringBuffer: void <init>()>() 

(declare-const var634!1 String)
(assert true)
(define-const var2901 String (append/1183289509 var634!1 34)) ; Statement: $r9 = virtualinvoke $r19.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(34) 
(assert true)
(define-const var2801 String (append/1560614132 var2901 var3267)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1) 
(declare-const var2901!1 String)
(assert (str.prefixof var2901 var2901!1))
(assert true)
(define-const var2279 String (append/1560614132 var2801 "\u0022 has no closing brace. Opening brace at position ")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\" has no closing brace. Opening brace at position ") 
(declare-const var2801!1 String)
(assert (str.prefixof var2801 var2801!1))
(assert true)
(define-const var1004 String (append/1845021834 var2279 var1180)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i4) 
(assert true)
(define-const var623 String (append/1183289509 var1004 46)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(46) 
(assert true)
(define-const var1848 String (toString/-222306083 var623)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1314 var1848)) ; Statement: specialinvoke $r20.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r14) 

(declare-const var1314!1 var2155)
(declare-const var1848!1 String)
 ; Statement: throw $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), indexOf/1795197748=([java.lang.String, java.lang.String, int], int), cast-from-Int-to-Int=([int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), indexOf/1426977840=([java.lang.String, int, int], int), var2155-init=([], java.lang.IllegalArgumentException), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), append/1845021834=([java.lang.StringBuffer, int], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3267=r1, var1841=null_type, var342=java.util.Properties, var645=r5, var2839=$r18, var3760=i6, var1400=org.apache.log4j.helpers.OptionConverter, var1546=$r2, var1180=$i4, var2468=$i9, var3440=$r3, var3779=$c0, var16=$i10, var1045=i1, var827=$i12, var2155=java.lang.IllegalArgumentException, var1314=$r20, var634=$r19, var2901=$r9, var2801=$r10, var2279=$r11, var1004=$r12, var623=$r13, var1848=$r14}
; {r1=var3267, null_type=var1841, java.util.Properties=var342, r5=var645, $r18=var2839, i6=var3760, org.apache.log4j.helpers.OptionConverter=var1400, $r2=var1546, $i4=var1180, $i9=var2468, $r3=var3440, $c0=var3779, $i10=var16, i1=var1045, $i12=var827, java.lang.IllegalArgumentException=var2155, $r20=var1314, $r19=var634, $r9=var2901, $r10=var2801, $r11=var2279, $r12=var1004, $r13=var623, $r14=var1848}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.String: int indexOf(java.lang.String,int)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.String: int indexOf(int,int)>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 2,"<java.lang.String: int indexOf(java.lang.String,int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.String: int indexOf(int,int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(int)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r5 := @parameter1: java.util.Properties;	$r18 = new java.lang.StringBuffer;	specialinvoke $r18.<java.lang.StringBuffer: void <init>()>();	i6 = 0;	$r2 = <org.apache.log4j.helpers.OptionConverter: java.lang.String DELIM_START>;	$i4 = virtualinvoke r1.<java.lang.String: int indexOf(java.lang.String,int)>($r2, i6);	$i9 = (int) -1;	if $i4 != $i9 goto $r3 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(i6, $i4);	$r3 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(i6, $i4);	virtualinvoke $r18.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3);	$c0 = <org.apache.log4j.helpers.OptionConverter: char DELIM_STOP>;	$i10 = (int) $c0;	i1 = virtualinvoke r1.<java.lang.String: int indexOf(int,int)>($i10, $i4);	$i12 = (int) -1;	if i1 != $i12 goto $i2 = <org.apache.log4j.helpers.OptionConverter: int DELIM_START_LEN>;	$r20 = new java.lang.IllegalArgumentException;	$r19 = new java.lang.StringBuffer;	specialinvoke $r19.<java.lang.StringBuffer: void <init>()>();	$r9 = virtualinvoke $r19.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(34);	$r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1);	$r11 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\" has no closing brace. Opening brace at position ");	$r12 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>($i4);	$r13 = virtualinvoke $r12.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(46);	$r14 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.String toString()>();	specialinvoke $r20.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r14);	throw $r20
;block_num 4