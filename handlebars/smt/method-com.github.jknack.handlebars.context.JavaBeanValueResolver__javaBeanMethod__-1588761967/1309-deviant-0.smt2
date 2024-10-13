(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var566 0)
(declare-sort var2097 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun var2097_toUpperCase/1913344327 (Int) Int)
(declare-fun setCharAt/-2056395727 (String Int Int) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var396 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var396 null-String)))
(declare-const var732 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var732 null-String)))
(define-const var516 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var516 var396)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>(r1) 
(declare-const var516!1 String)
(assert (= var516!1 var396))
(assert true)
;(assert (append/672562846 var516!1 var732)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var516!2 String)
(assert (= var516!2 (str.++ var516!1 var732)))
(assert true)
(define-const var1912 Int (length/-134980193 var396)) ; Statement: $i2 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert (not (and true (and (> (str.len var732) 0) (<= 0 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), var2097_toUpperCase/1913344327=([char], char), setCharAt/-2056395727=([java.lang.StringBuilder, int, char], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var396=r1, var566=null_type, var732=r2, var516=$r0, var1912=$i2, var140=$c0, var2097=java.lang.Character, var2045=$c1, var1883=$r3}
; {r1=var396, null_type=var566, r2=var732, $r0=var516, $i2=var1912, $c0=var140, java.lang.Character=var2097, $c1=var2045, $r3=var1883}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.StringBuilder: void setCharAt(int,char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1,"<java.lang.StringBuilder: void setCharAt(int,char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>(r1);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$i2 = virtualinvoke r1.<java.lang.String: int length()>();	$c0 = virtualinvoke r2.<java.lang.String: char charAt(int)>(0);	$c1 = staticinvoke <java.lang.Character: char toUpperCase(char)>($c0);	virtualinvoke $r0.<java.lang.StringBuilder: void setCharAt(int,char)>($i2, $c1);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 1