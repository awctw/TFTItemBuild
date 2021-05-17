import React, { Component } from 'react';
import { Button, Table, Input, Form } from 'antd';

import './App.css';
class App extends Component {
  state = {
    loading: false,
    data: [],
  };


  async componentDidMount() {
    const response = await fetch( `/getAllChampionItems`, {
        method: 'get'
    } );

    const results = await response.json();
    if ( results && results.length > 0 ) {
        const data = results.map(( info, i ) => {
            return {
                key: i,
                ...info
            };
        } )
        this.setState({data} )
    }
}

  handleGetChampionItems = async (record) => {
    const finalItem = record.finalItem;
    if (!finalItem) {
        this.componentDidMount();
    } else {
    const response = await fetch( `/getChampionItems?finalItem=${finalItem}`, {
        method: 'get'
    } );
    const results = await response.json();
    let champions = [];
    results.map(result => {
      champions.push(result.championName);
    })
    const {data} = this.state;
    let filterData = [];
    data.map(d => {
        if (champions.includes(d.championName)) filterData.push(d);
    })
    this.setState({
      data: filterData
    })
    }
}


 render () {

  const {data} = this.state;
  if(data) {
    const columns = [{
      title: 'Champion Name',
      dataIndex: 'championName',
      width: '10%',
  }, 
  {
      title: 'Final Item 1',
      dataIndex: 'finalItemName1',
      width: '20%',
  },
  {
      title: 'Final Item 2',
      dataIndex: 'finalItemName2',
      width: '10%'
  },
  {
      title: 'Final Item 3',
      dataIndex: 'finalItemName3',
      width: '10%',
  }
    ];
  


return (
  <div>
  <Table
      bordered
      dataSource={data}
      columns={columns}
      title={() => <b>All Champions' Items</b>}
      pagination={false}
  />

<br />
<br />
<Form
      labelCol= {{ span: 4 }}
      wrapperCol={{ span: 5 }}
      initialValues={{ remember: true }}
      onFinish={this.handleGetChampionItems}
      >
      <Form.Item
          label="Filter by Item"
          name="finalItem"
      >
          <Input />
      </Form.Item>
      <Form.Item 
      wrapperCol={{ offset: 4, span: 8 }}
      >

          <Button type="primary" htmlType="submit">
          Filter by Item 
          </Button>
          <Button onClick={this.componentDidMount.bind(this)}>Clear filters</Button>

      </Form.Item>
  </Form>
<br />
<br />
</div>

    );
}
  }
}

export default App;
