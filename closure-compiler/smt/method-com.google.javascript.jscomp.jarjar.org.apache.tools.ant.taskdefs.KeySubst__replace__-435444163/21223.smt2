(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1864 0)
(declare-sort var3539 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun indexOf/1795197748 ((s String) (subs String) (fromIndex Int)) Int (str.indexof s subs fromIndex))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-String String)
(declare-const null-var3539 var3539)
(declare-const var3421 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3421 null-String)))
(declare-const var2145 var3539) ; Statement: r4 := @parameter1: java.util.Hashtable 
(assert (not (= var2145 null-var3539)))
(define-const var1023 String String-init) ; Statement: $r8 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1023)) ; Statement: specialinvoke $r8.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1023!1 String)
(define-const var3324 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var449 Int (indexOf/1795197748 var3421 "${" var3324)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int indexOf(java.lang.String,int)>("${", i6) 
(define-const var2450 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i8 = (int) -1 
 ; Statement: if $i0 <= $i8 goto $r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>(i6) 
(assert (<= var449 var2450)) ; Cond: $i0 <= $i8 
(assert (and true (and (>= var3324 0) (>= (str.len var3421) var3324))))
(define-const var3795 String (substring/850833817 var3421 var3324)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>(i6) 
(assert true)
;(assert (append/1560614132 var1023!1 var3795)) ; Statement: virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var1023!2 String)
(assert (str.prefixof var1023!1 var1023!2))
(assert true)
(define-const var2589 String (toString/-222306083 var1023!2)) ; Statement: $r3 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), indexOf/1795197748=([java.lang.String, java.lang.String, int], int), cast-from-Int-to-Int=([int], int), substring/850833817=([java.lang.String, int], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var3421=r1, var1864=null_type, var3539=java.util.Hashtable, var2145=r4, var1023=$r8, var3324=i6, var449=$i0, var2450=$i8, var3795=$r2, var2589=$r3}
; {r1=var3421, null_type=var1864, java.util.Hashtable=var3539, r4=var2145, $r8=var1023, i6=var3324, $i0=var449, $i8=var2450, $r2=var3795, $r3=var2589}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.String: int indexOf(java.lang.String,int)>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.String: int indexOf(java.lang.String,int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r4 := @parameter1: java.util.Hashtable;	$r8 = new java.lang.StringBuffer;	specialinvoke $r8.<java.lang.StringBuffer: void <init>()>();	i6 = 0;	$i0 = virtualinvoke r1.<java.lang.String: int indexOf(java.lang.String,int)>("${", i6);	$i8 = (int) -1;	if $i0 <= $i8 goto $r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>(i6);	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>(i6);	virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	$r3 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.String toString()>();	return $r3
;block_num 3