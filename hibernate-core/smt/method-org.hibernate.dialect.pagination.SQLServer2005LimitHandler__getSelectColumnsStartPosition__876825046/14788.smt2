(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var178 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSelectStartPosition/-968483281 (var178 String Int) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(define-fun toLowerCase/415700667 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "A" "a") "B" "b") "C" "c") "D" "d") "E" "e") "F" "f") "G" "g") "H" "h") "I" "i") "J" "j") "K" "k") "L" "l") "M" "m") "N" "n") "O" "o") "P" "p") "Q" "q") "R" "r") "S" "s") "T" "t") "U" "u") "V" "v") "W" "w") "X" "x") "Y" "y") "Z" "z"))
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var178 var178)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3975 var178) ; Statement: r0 := @this: org.hibernate.dialect.pagination.SQLServer2005LimitHandler 
(assert (not (= var3975 null-var178)))
(declare-const var3704 String) ; Statement: r1 := @parameter0: java.lang.StringBuilder 
(assert (not (= var3704 null-String)))
(declare-const var921 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var921 null-Int)))
(assert true)
(define-const var2732 Int (getSelectStartPosition/-968483281 var3975 var3704 var921)) ; Statement: i1 = specialinvoke r0.<org.hibernate.dialect.pagination.SQLServer2005LimitHandler: int getSelectStartPosition(java.lang.StringBuilder,int)>(r1, i0) 
(assert true)
(define-const var1855 String (toString/-2075883882 var3704)) ; Statement: $r2 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (and true (and (>= var2732 0) (>= (str.len var1855) var2732))))
(define-const var2021 String (substring/850833817 var1855 var2732)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String substring(int)>(i1) 
(assert true)
(define-const var3237 String (toLowerCase/415700667 var2021)) ; Statement: r4 = virtualinvoke $r3.<java.lang.String: java.lang.String toLowerCase()>() 
(assert true)
(define-const var863 Bool (startsWith/-1785782452 var3237 "select distinct ")) ; Statement: $z0 = virtualinvoke r4.<java.lang.String: boolean startsWith(java.lang.String)>("select distinct ") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r4.<java.lang.String: boolean startsWith(java.lang.String)>("select ") 
(assert (not (= (ite var863 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1367 String "select distinct ") ; Statement: $r6 = "select distinct " 
(assert true)
(define-const var3125 Int (length/-134980193 var1367)) ; Statement: $i4 = virtualinvoke $r6.<java.lang.String: int length()>() 
(define-const var3528 Int (+ var2732 var3125)) ; Statement: $i5 = i1 + $i4 
 ; Statement: return $i5 
(check-sat)
(get-model)
(get-unsat-core)
; {getSelectStartPosition/-968483281=([org.hibernate.dialect.pagination.SQLServer2005LimitHandler, java.lang.StringBuilder, int], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), substring/850833817=([java.lang.String, int], java.lang.String), toLowerCase/415700667=([java.lang.String], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), length/-134980193=([java.lang.String], int)}
; {var178=org.hibernate.dialect.pagination.SQLServer2005LimitHandler, var3975=r0, var3704=r1, var921=i0, var2732=i1, var1855=$r2, var2021=$r3, var3237=r4, var863=$z0, var1367=$r6, var3125=$i4, var3528=$i5}
; {org.hibernate.dialect.pagination.SQLServer2005LimitHandler=var178, r0=var3975, r1=var3704, i0=var921, i1=var2732, $r2=var1855, $r3=var2021, r4=var3237, $z0=var863, $r6=var1367, $i4=var3125, $i5=var3528}
;seq <java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.String: java.lang.String toLowerCase()>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: int length()>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.String: java.lang.String toLowerCase()>": 1,"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.hibernate.dialect.pagination.SQLServer2005LimitHandler;	r1 := @parameter0: java.lang.StringBuilder;	i0 := @parameter1: int;	i1 = specialinvoke r0.<org.hibernate.dialect.pagination.SQLServer2005LimitHandler: int getSelectStartPosition(java.lang.StringBuilder,int)>(r1, i0);	$r2 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String substring(int)>(i1);	r4 = virtualinvoke $r3.<java.lang.String: java.lang.String toLowerCase()>();	$z0 = virtualinvoke r4.<java.lang.String: boolean startsWith(java.lang.String)>("select distinct ");	if $z0 == 0 goto $z1 = virtualinvoke r4.<java.lang.String: boolean startsWith(java.lang.String)>("select ");	$r6 = "select distinct ";	$i4 = virtualinvoke $r6.<java.lang.String: int length()>();	$i5 = i1 + $i4;	return $i5
;block_num 2