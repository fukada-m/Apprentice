# トランザクションについて説明できる

## 1. トランザクション

トランザクションとは何か、何のためにあるものかを、データベース初心者にわかるように説明してください。

A. 
トランザクションとは複数のクエリをひとまとまりにしたものです。1連の処理に対して全部成功するか失敗するかのどちらかの状態にするため使われます。
例えば、銀行の送金機能は送り手と受けてに対して、プラスとマイナスの処理の両方が成功するか失敗するかの結果のみが望まれます。

## 2. トランザクションの実行

employees データベースに接続してください。次に、トランザクションを実行してください。

A.

```sql
START TRANSACTION;
```

## 3. ロールバック

任意のテーブルにデータを追加してください。検索を実行し、データが追加されていることを確認してください。

次に、ロールバックを実行してください。検索を実行し、データの追加がされていないことを確認してください。

A.
```sql
INSERT INTO employees VALUES(600000, '1992-08-29', 'mitsuharu', 'fukada', 'M', '9999-01-01');

SELECT *
FROM employees
WHERE emp_no = 600000;

ROLLBACK;

SELECT *
FROM employees
WHERE emp_no = 600000;
```

## 4. コミット

トランザクションを実行してください。任意のテーブルにデータを追加してください。検索を実行し、データが追加されていることを確認してください。

次に、コミットを実行してください。検索を実行し、データが追加されていることを確認してください。

A.
```sql
INSERT INTO employees VALUES(700000, '1992-01-01', 'dareka', 'dare', 'F', '9999-01-01');

SELECT *
FROM employees
WHERE emp_no = 700000;

COMMIT;

SELECT *
FROM employees
WHERE emp_no = 700000;
```