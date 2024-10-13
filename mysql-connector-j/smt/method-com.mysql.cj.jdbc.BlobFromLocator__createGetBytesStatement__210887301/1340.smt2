(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var470 0)
(declare-sort var1666 0)
(declare-sort var1506 0)
(declare-sort var345 0)
(declare-sort var723 0)
(declare-sort var3568 0)
(declare-sort var3992 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun blobColumnName/-238416182 (var470) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun tableName/-238416182 (var470) String)
(declare-fun primaryKeyColumns/-238416182 (var470) var1666)
(declare-fun var1666_get/-1216255739 (var1666 Int) var1506)
(declare-fun cast-from-var1506-to-String (var1506) String)
(declare-fun numPrimaryKeys/-238416182 (var470) Int)
(declare-fun creatorResultSet/-238416182 (var470) var345)
(declare-fun getConnection/1117306416 (var345) var723)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3992_prepareStatement/1695973940 (var3992 String) var3568)
(declare-fun cast-from-var723-to-var3992 (var723) var3992)
(declare-const null-var470 var470)
(declare-const var543 var470) ; Statement: r1 := @this: com.mysql.cj.jdbc.BlobFromLocator 
(assert (not (= var543 null-var470)))
(define-const var2355 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var2355 "SELECT SUBSTRING(")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("SELECT SUBSTRING(") 
(declare-const var2355!1 String)
(assert (= var2355!1 "SELECT SUBSTRING("))
(define-const var431 String (blobColumnName/-238416182 var543)) ; Statement: $r2 = r1.<com.mysql.cj.jdbc.BlobFromLocator: java.lang.String blobColumnName> 
(assert true)
;(assert (append/672562846 var2355!1 var431)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2355!2 String)
(assert (= var2355!2 (str.++ var2355!1 var431)))
(assert true)
;(assert (append/672562846 var2355!2 ", ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var2355!3 String)
(assert (= var2355!3 (str.++ var2355!2 ", ")))
(assert true)
;(assert (append/672562846 var2355!3 "?")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("?") 
(declare-const var2355!4 String)
(assert (= var2355!4 (str.++ var2355!3 "?")))
(assert true)
;(assert (append/672562846 var2355!4 ", ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var2355!5 String)
(assert (= var2355!5 (str.++ var2355!4 ", ")))
(assert true)
;(assert (append/672562846 var2355!5 "?")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("?") 
(declare-const var2355!6 String)
(assert (= var2355!6 (str.++ var2355!5 "?")))
(assert true)
;(assert (append/672562846 var2355!6 ") FROM ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") FROM ") 
(declare-const var2355!7 String)
(assert (= var2355!7 (str.++ var2355!6 ") FROM ")))
(define-const var2091 String (tableName/-238416182 var543)) ; Statement: $r3 = r1.<com.mysql.cj.jdbc.BlobFromLocator: java.lang.String tableName> 
(assert true)
;(assert (append/672562846 var2355!7 var2091)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2355!8 String)
(assert (= var2355!8 (str.++ var2355!7 var2091)))
(assert true)
;(assert (append/672562846 var2355!8 " WHERE ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" WHERE ") 
(declare-const var2355!9 String)
(assert (= var2355!9 (str.++ var2355!8 " WHERE ")))
(define-const var1377 var1666 (primaryKeyColumns/-238416182 var543)) ; Statement: $r4 = r1.<com.mysql.cj.jdbc.BlobFromLocator: java.util.List primaryKeyColumns> 
(define-const var649 var1506 (var1666_get/-1216255739 var1377 0)) ; Statement: $r5 = interfaceinvoke $r4.<java.util.List: java.lang.Object get(int)>(0) 
(define-const var925 String (cast-from-var1506-to-String var649)) ; Statement: $r6 = (java.lang.String) $r5 
(assert true)
;(assert (append/672562846 var2355!9 var925)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2355!10 String)
(assert (= var2355!10 (str.++ var2355!9 var925)))
(assert true)
;(assert (append/672562846 var2355!10 " = ?")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" = ?") 
(declare-const var2355!11 String)
(assert (= var2355!11 (str.++ var2355!10 " = ?")))
(define-const var15 Int 1) ; Statement: i1 = 1 
(assert true) ; Non Conditional
(define-const var3696 Int (numPrimaryKeys/-238416182 var543)) ; Statement: $i0 = r1.<com.mysql.cj.jdbc.BlobFromLocator: int numPrimaryKeys> 
 ; Statement: if i1 >= $i0 goto $r7 = r1.<com.mysql.cj.jdbc.BlobFromLocator: com.mysql.cj.jdbc.result.ResultSetImpl creatorResultSet> 
(assert (>= var15 var3696)) ; Cond: i1 >= $i0 
(define-const var2655 var345 (creatorResultSet/-238416182 var543)) ; Statement: $r7 = r1.<com.mysql.cj.jdbc.BlobFromLocator: com.mysql.cj.jdbc.result.ResultSetImpl creatorResultSet> 
(assert true)
(define-const var648 var723 (getConnection/1117306416 var2655)) ; Statement: $r9 = virtualinvoke $r7.<com.mysql.cj.jdbc.result.ResultSetImpl: com.mysql.cj.jdbc.JdbcConnection getConnection()>() 
(assert true)
(define-const var2672 String (toString/-2075883882 var2355!11)) ; Statement: $r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2882 var3568 (var3992_prepareStatement/1695973940 (cast-from-var723-to-var3992 var648) var2672)) ; Statement: $r10 = interfaceinvoke $r9.<com.mysql.cj.jdbc.JdbcConnection: java.sql.PreparedStatement prepareStatement(java.lang.String)>($r8) 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), blobColumnName/-238416182=([com.mysql.cj.jdbc.BlobFromLocator], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), tableName/-238416182=([com.mysql.cj.jdbc.BlobFromLocator], java.lang.String), primaryKeyColumns/-238416182=([com.mysql.cj.jdbc.BlobFromLocator], java.util.List), var1666_get/-1216255739=([java.util.List, int], java.lang.Object), cast-from-var1506-to-String=([java.lang.Object], java.lang.String), numPrimaryKeys/-238416182=([com.mysql.cj.jdbc.BlobFromLocator], int), creatorResultSet/-238416182=([com.mysql.cj.jdbc.BlobFromLocator], com.mysql.cj.jdbc.result.ResultSetImpl), getConnection/1117306416=([com.mysql.cj.jdbc.result.ResultSetImpl], com.mysql.cj.jdbc.JdbcConnection), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3992_prepareStatement/1695973940=([java.sql.Connection, java.lang.String], java.sql.PreparedStatement), cast-from-var723-to-var3992=([com.mysql.cj.jdbc.JdbcConnection], java.sql.Connection)}
; {var470=com.mysql.cj.jdbc.BlobFromLocator, var543=r1, var2355=$r0, var431=$r2, var2091=$r3, var1666=java.util.List, var1377=$r4, var1506=java.lang.Object, var649=$r5, var925=$r6, var15=i1, var3696=$i0, var345=com.mysql.cj.jdbc.result.ResultSetImpl, var2655=$r7, var723=com.mysql.cj.jdbc.JdbcConnection, var648=$r9, var2672=$r8, var3568=java.sql.PreparedStatement, var3992=java.sql.Connection, var2882=$r10}
; {com.mysql.cj.jdbc.BlobFromLocator=var470, r1=var543, $r0=var2355, $r2=var431, $r3=var2091, java.util.List=var1666, $r4=var1377, java.lang.Object=var1506, $r5=var649, $r6=var925, i1=var15, $i0=var3696, com.mysql.cj.jdbc.result.ResultSetImpl=var345, $r7=var2655, com.mysql.cj.jdbc.JdbcConnection=var723, $r9=var648, $r8=var2672, java.sql.PreparedStatement=var3568, java.sql.Connection=var3992, $r10=var2882}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 10,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.mysql.cj.jdbc.BlobFromLocator;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("SELECT SUBSTRING(");	$r2 = r1.<com.mysql.cj.jdbc.BlobFromLocator: java.lang.String blobColumnName>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("?");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("?");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") FROM ");	$r3 = r1.<com.mysql.cj.jdbc.BlobFromLocator: java.lang.String tableName>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" WHERE ");	$r4 = r1.<com.mysql.cj.jdbc.BlobFromLocator: java.util.List primaryKeyColumns>;	$r5 = interfaceinvoke $r4.<java.util.List: java.lang.Object get(int)>(0);	$r6 = (java.lang.String) $r5;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" = ?");	i1 = 1;	$i0 = r1.<com.mysql.cj.jdbc.BlobFromLocator: int numPrimaryKeys>;	if i1 >= $i0 goto $r7 = r1.<com.mysql.cj.jdbc.BlobFromLocator: com.mysql.cj.jdbc.result.ResultSetImpl creatorResultSet>;	$r7 = r1.<com.mysql.cj.jdbc.BlobFromLocator: com.mysql.cj.jdbc.result.ResultSetImpl creatorResultSet>;	$r9 = virtualinvoke $r7.<com.mysql.cj.jdbc.result.ResultSetImpl: com.mysql.cj.jdbc.JdbcConnection getConnection()>();	$r8 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = interfaceinvoke $r9.<com.mysql.cj.jdbc.JdbcConnection: java.sql.PreparedStatement prepareStatement(java.lang.String)>($r8);	return $r10
;block_num 3