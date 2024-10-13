(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1004 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1004-init () var1004)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1326397480 (var1004 String) void)
(declare-const null-Int Int)
(declare-const var1849 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1849 null-Int)))
 ; Statement: tableswitch(i0) {     case 1: goto return 1;     case 2: goto return 2;     case 3: goto return 4;     case 4: goto return 3;     case 5: goto return 6;     case 6: goto return 5;     default: goto $r0 = new freemarker.core.BugException; } 
(assert (and (not (= var1849 6)) (and (not (= var1849 5)) (and (not (= var1849 4)) (and (not (= var1849 3)) (and (not (= var1849 2)) (and (not (= var1849 1)) true))))))) ; Intersect: Negate: Cond: i0 == 6   and Intersect: Negate: Cond: i0 == 5   and Intersect: Negate: Cond: i0 == 4   and Intersect: Negate: Cond: i0 == 3   and Intersect: Negate: Cond: i0 == 2   and Intersect: Negate: Cond: i0 == 1   and Non Conditional      
(define-const var1963 var1004 var1004-init) ; Statement: $r0 = new freemarker.core.BugException 
(define-const var3431 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3431)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3431!1 String)
(assert (= var3431!1 ""))
(assert true)
(define-const var1182 String (append/672562846 var3431!1 "Unsupported comparator operator code: ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unsupported comparator operator code: ") 
(declare-const var3431!2 String)
(assert (= var3431!2 (str.++ var3431!1 "Unsupported comparator operator code: ")))
(assert true)
(define-const var773 String (append/-1001720160 var1182 var1849)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1182!1 String)
(assert (str.prefixof var1182 var1182!1))
(assert true)
(define-const var153 String (toString/-2075883882 var773)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1326397480 var1963 var153)) ; Statement: specialinvoke $r0.<freemarker.core.BugException: void <init>(java.lang.String)>($r4) 

(declare-const var1963!1 var1004)
(declare-const var153!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1004-init=([], freemarker.core.BugException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1326397480=([freemarker.core.BugException, java.lang.String], void)}
; {var1849=i0, var1004=freemarker.core.BugException, var1963=$r0, var3431=$r1, var1182=$r2, var773=$r3, var153=$r4}
; {i0=var1849, freemarker.core.BugException=var1004, $r0=var1963, $r1=var3431, $r2=var1182, $r3=var773, $r4=var153}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts i0 := @parameter0: int;	tableswitch(i0) {     case 1: goto return 1;     case 2: goto return 2;     case 3: goto return 4;     case 4: goto return 3;     case 5: goto return 6;     case 6: goto return 5;     default: goto $r0 = new freemarker.core.BugException; };	$r0 = new freemarker.core.BugException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unsupported comparator operator code: ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<freemarker.core.BugException: void <init>(java.lang.String)>($r4);	throw $r0
;block_num 2