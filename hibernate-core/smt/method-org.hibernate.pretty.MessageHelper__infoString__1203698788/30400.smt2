(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1761 0)
(declare-sort var325 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-var325 var325)
(declare-const var303 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var303 null-String)))
(declare-const var1016 var325) ; Statement: r2 := @parameter1: java.io.Serializable 
(assert (not (= var1016 null-var325)))
(define-const var3896 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3896)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3896!1 String)
(assert (= var3896!1 ""))
(assert true)
;(assert (append/-1166366385 var3896!1 91)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var3896!2 String)
(assert (str.prefixof var3896!1 var3896!2))
 ; Statement: if r1 != null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(assert (not (not (= var303 null-String)))) ; Negate: Cond: r1 != null  
(assert true)
;(assert (append/672562846 var3896!2 "<null entity name>")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<null entity name>") 
(declare-const var3896!3 String)
(assert (= var3896!3 (str.++ var3896!2 "<null entity name>")))
 ; Statement: goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(35)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/-1166366385 var3896!3 35)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(35) 
(declare-const var3896!4 String)
(assert (str.prefixof var3896!3 var3896!4))
 ; Statement: if r2 != null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(assert (not (not (= var1016 null-var325)))) ; Negate: Cond: r2 != null  
(assert true)
;(assert (append/672562846 var3896!4 "<null>")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<null>") 
(declare-const var3896!5 String)
(assert (= var3896!5 (str.++ var3896!4 "<null>")))
 ; Statement: goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/-1166366385 var3896!5 93)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var3896!6 String)
(assert (str.prefixof var3896!5 var3896!6))
(assert true)
(define-const var3797 String (toString/-2075883882 var3896!6)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var303=r1, var1761=null_type, var325=java.io.Serializable, var1016=r2, var3896=$r0, var3797=$r3}
; {r1=var303, null_type=var1761, java.io.Serializable=var325, r2=var1016, $r0=var3896, $r3=var3797}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.io.Serializable;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	if r1 != null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<null entity name>");	goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(35)];	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(35);	if r2 != null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<null>");	goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93)];	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 5