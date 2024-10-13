(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var547 0)
(declare-sort var2270 0)
(declare-sort var3712 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun indexOf/1795197748 ((s String) (subs String) (fromIndex Int)) Int (str.indexof s subs fromIndex))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-String String)
(declare-const null-var2270 var2270)
(declare-const var3712-DELIM_START String)
(declare-const var524 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var524 null-String)))
(declare-const var1775 var2270) ; Statement: r5 := @parameter1: java.util.Properties 
(assert (not (= var1775 null-var2270)))
(define-const var3800 String String-init) ; Statement: $r18 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3800)) ; Statement: specialinvoke $r18.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3800!1 String)
(define-const var1528 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
(define-const var2663 String var3712-DELIM_START) ; Statement: $r2 = <org.apache.log4j.helpers.OptionConverter: java.lang.String DELIM_START> 
(assert true)
(define-const var1376 Int (indexOf/1795197748 var524 var2663 var1528)) ; Statement: $i4 = virtualinvoke r1.<java.lang.String: int indexOf(java.lang.String,int)>($r2, i6) 
(define-const var3143 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i9 = (int) -1 
 ; Statement: if $i4 != $i9 goto $r3 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(i6, $i4) 
(assert (not (not (= var1376 var3143)))) ; Negate: Cond: $i4 != $i9  
 ; Statement: if i6 != 0 goto $i5 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert (not (= var1528 0))) ; Cond: i6 != 0 
(assert true)
(define-const var3151 Int (length/-134980193 var524)) ; Statement: $i5 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert (and true (and (>= var1528 0) (>= (str.len var524) var3151) (>= var3151 var1528))))
(define-const var3655 String (substring/-1240304868 var524 var1528 var3151)) ; Statement: $r15 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(i6, $i5) 
(assert true)
;(assert (append/1560614132 var3800!1 var3655)) ; Statement: virtualinvoke $r18.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r15) 
(declare-const var3800!2 String)
(assert (str.prefixof var3800!1 var3800!2))
(assert true)
(define-const var3108 String (toString/-222306083 var3800!2)) ; Statement: $r16 = virtualinvoke $r18.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), indexOf/1795197748=([java.lang.String, java.lang.String, int], int), cast-from-Int-to-Int=([int], int), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var524=r1, var547=null_type, var2270=java.util.Properties, var1775=r5, var3800=$r18, var1528=i6, var3712=org.apache.log4j.helpers.OptionConverter, var2663=$r2, var1376=$i4, var3143=$i9, var3151=$i5, var3655=$r15, var3108=$r16}
; {r1=var524, null_type=var547, java.util.Properties=var2270, r5=var1775, $r18=var3800, i6=var1528, org.apache.log4j.helpers.OptionConverter=var3712, $r2=var2663, $i4=var1376, $i9=var3143, $i5=var3151, $r15=var3655, $r16=var3108}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.String: int indexOf(java.lang.String,int)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.String: int indexOf(java.lang.String,int)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r5 := @parameter1: java.util.Properties;	$r18 = new java.lang.StringBuffer;	specialinvoke $r18.<java.lang.StringBuffer: void <init>()>();	i6 = 0;	$r2 = <org.apache.log4j.helpers.OptionConverter: java.lang.String DELIM_START>;	$i4 = virtualinvoke r1.<java.lang.String: int indexOf(java.lang.String,int)>($r2, i6);	$i9 = (int) -1;	if $i4 != $i9 goto $r3 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(i6, $i4);	if i6 != 0 goto $i5 = virtualinvoke r1.<java.lang.String: int length()>();	$i5 = virtualinvoke r1.<java.lang.String: int length()>();	$r15 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(i6, $i5);	virtualinvoke $r18.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r15);	$r16 = virtualinvoke $r18.<java.lang.StringBuffer: java.lang.String toString()>();	return $r16
;block_num 4