(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3401 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3401 var3401)
(declare-const null-Int Int)
(declare-const var1493 var3401) ; Statement: r0 := @this: org.hibernate.dialect.DB2Dialect 
(assert (not (= var1493 null-var3401)))
(declare-const var2499 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2499 null-Int)))
 ; Statement: lookupswitch(i0) {     case 1: goto r1 = "\'x\'";     case 12: goto r1 = "\'x\'";     case 91: goto r1 = "\'2000-1-1\'";     case 92: goto r1 = "\'00:00:00\'";     case 93: goto r1 = "\'2000-1-1 00:00:00\'";     default: goto r1 = "0"; } 
(assert (and (= var2499 1) true)) ; Intersect: Cond: i0 == 1  and Non Conditional 
(define-const var1228 String "\u0027x\u0027") ; Statement: r1 = "\'x\'" 
(define-const var2025 String "\u0027x\u0027") ; Statement: r10 = "\'x\'" 
(define-const var1057 String "\u0027x\u0027") ; Statement: r9 = "\'x\'" 
 ; Statement: goto [?= $r2 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var538 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var538)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var538!1 String)
(assert (= var538!1 ""))
(assert true)
(define-const var1164 String (append/672562846 var538!1 "nullif(")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("nullif(") 
(declare-const var538!2 String)
(assert (= var538!2 (str.++ var538!1 "nullif(")))
(assert true)
(define-const var3906 String (append/672562846 var1164 var1057)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r9) 
(declare-const var1164!1 String)
(assert (= var1164!1 (str.++ var1164 var1057)))
(assert true)
(define-const var3311 String (append/672562846 var3906 ", ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var3906!1 String)
(assert (= var3906!1 (str.++ var3906 ", ")))
(assert true)
(define-const var3665 String (append/672562846 var3311 var2025)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10) 
(declare-const var3311!1 String)
(assert (= var3311!1 (str.++ var3311 var2025)))
(assert true)
(define-const var3268 String (append/-1166366385 var3665 41)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var3665!1 String)
(assert (str.prefixof var3665 var3665!1))
(assert true)
(define-const var45 String (toString/-2075883882 var3268)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3401=org.hibernate.dialect.DB2Dialect, var1493=r0, var2499=i0, var1228=r1, var2025=r10, var1057=r9, var538=$r2, var1164=$r3, var3906=$r4, var3311=$r5, var3665=$r6, var3268=$r7, var45=$r8}
; {org.hibernate.dialect.DB2Dialect=var3401, r0=var1493, i0=var2499, r1=var1228, r10=var2025, r9=var1057, $r2=var538, $r3=var1164, $r4=var3906, $r5=var3311, $r6=var3665, $r7=var3268, $r8=var45}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.dialect.DB2Dialect;	i0 := @parameter0: int;	lookupswitch(i0) {     case 1: goto r1 = "\'x\'";     case 12: goto r1 = "\'x\'";     case 91: goto r1 = "\'2000-1-1\'";     case 92: goto r1 = "\'00:00:00\'";     case 93: goto r1 = "\'2000-1-1 00:00:00\'";     default: goto r1 = "0"; };	r1 = "\'x\'";	r10 = "\'x\'";	r9 = "\'x\'";	goto [?= $r2 = new java.lang.StringBuilder];	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("nullif(");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r9);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 3