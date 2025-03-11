# 環境構築

```
hugo new site [Repo名]
cd [Repo名]
git init .
```

```
git submodule add https://github.com/adityatelange/hugo-PaperMod.git themes/papermod --depth=1
git submodule update --init --recursive
```

```
git remote add origin git@github.com:[User名]/[Repo名].git
```

```
git push origin main
```

# 

```
hugo new blog/[タイトル].md
```

```
hugo server -D
```

# テーマのカスタム
テーマをカスタムするときは，submoduleのthemesを弄ってはいけない．
ブログのリポジトリの assets や layouts にカスタムを配置していく．

- assets には，カスタムjsとcssを配置
- layouts には，カスタムhtmlとxmlを配置

注意として，htmlやxmlはファイル全体がオーバーライドされる．
したがって，theme からカスタムする html や xml をコピーして編集する．

## カスタム内容
- my_theme.css
  - カラーテーマの変更
- svg.html
  - Qiita，note アイコンの追加

# 別のPCで使用するとき

```
git submodule update --init --recursive
```

# 参考にしたもの
https://zenn.dev/okaponta/articles/c302f58507febc
https://github.com/adityatelange/hugo-PaperMod
https://sat8bit.github.io/posts/hugo-with-github-pages/
