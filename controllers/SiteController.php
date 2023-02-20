<?php

namespace app\controllers;

use yii\web\Controller;
use app\models\Posts;
use app\models\Comments;



class SiteController extends Controller
{

    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
            'captcha' => [
                'class' => 'yii\captcha\CaptchaAction',
                'fixedVerifyCode' => YII_ENV_TEST ? 'testme' : null,
            ],
        ];
    }

    /**
     * Displays homepage.
     *
     * @return string
     */
    public function actionIndex()
    {
        $posts = Posts::find()->asArray()->all();
        $comments = Comments::find()->asArray()->all();

        foreach ($posts as $i => $post)
        {
            $count = 0;
            foreach ($comments as $comment)
            {
                if($post['id'] == $comment['post_id'])
                    $count++;
            }

            $result[] = $post;

            $result[$i]['comments'] = $count;
        }

        return $this->render('index', ['posts' => $result]);
    }

    public function actionAbout()
    {
        return $this->render('about');
    }

    public function actionPost()
    {
        $post = Posts::find()->asArray()->where(['id' => $_GET['id']])->one();
        $comments = Comments::find()->asArray()->where(['post_id' => $_GET['id']])->all();

        return $this->render('post', ['post' => $post, 'comments' => $comments]);
    }

    public function actionAddComment()
    {
        $model = new Comments();

        if(isset($_POST['author']))
        {
            $model->author = $_POST['author'];
            $model->text = $_POST['text'];
            $model->pub_date = Date('d.m.Y - H:i');
            $model->post_id = $_POST['post_id'];
            $model->save();

            echo "<script>window.history.go(-2);</script>";
        }



        return $this->render('add-comment');
    }

}
