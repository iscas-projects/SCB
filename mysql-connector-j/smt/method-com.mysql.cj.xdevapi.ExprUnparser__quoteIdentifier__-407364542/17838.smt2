(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2213 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun replaceAll/1692887130 (String String String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var2571 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2571 null-String)))
(assert true)
(define-const var1890 Bool (contains/1009244746 var2571 (cast-from-String-to-String "`"))) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>("`") 
 ; Statement: if $z0 != 0 goto $r1 = new java.lang.StringBuilder 
(assert (not (= (ite var1890 1 0) 0))) ; Cond: $z0 != 0 
(define-const var386 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var386)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var386!1 String)
(assert (= var386!1 ""))
(assert true)
(define-const var3042 String (append/672562846 var386!1 "`")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("`") 
(declare-const var386!2 String)
(assert (= var386!2 (str.++ var386!1 "`")))
(assert true)
(define-const var2607 String (replaceAll/1692887130 var2571 "`" "``")) ; Statement: $r3 = virtualinvoke r0.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("`", "``") 
(assert (= (replaceAll/1692887130 var2571 "`" "``") (str.replace_re_all var2571 (str.to_re "`") "``")))
(assert true)
(define-const var2415 String (append/672562846 var3042 var2607)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3042!1 String)
(assert (= var3042!1 (str.++ var3042 var2607)))
(assert true)
(define-const var1621 String (append/672562846 var2415 "`")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("`") 
(declare-const var2415!1 String)
(assert (= var2415!1 (str.++ var2415 "`")))
(assert true)
(define-const var645 String (toString/-2075883882 var1621)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), replaceAll/1692887130=([java.lang.String, java.lang.String, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2571=r0, var2213=null_type, var1890=$z0, var386=$r1, var3042=$r2, var2607=$r3, var2415=$r4, var1621=$r5, var645=$r6}
; {r0=var2571, null_type=var2213, $z0=var1890, $r1=var386, $r2=var3042, $r3=var2607, $r4=var2415, $r5=var1621, $r6=var645}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>("`");	if $z0 != 0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("`");	$r3 = virtualinvoke r0.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("`", "``");	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("`");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 2